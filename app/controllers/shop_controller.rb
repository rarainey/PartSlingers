class ShopController < ApplicationController
    before_action :admin?, only: [:new, :create, :edit, :update, :hide_item]
    before_action :authenticate_user!, only: [:add_to_cart, :add_to_checklist]

    def admin?
        if user_signed_in? == false or current_user.admin_status == false
            redirect_to shop_path
        end
    end

    def index
        @term1 = @q.title_or_description_or_brand_or_category_cont 
        @term2 = @q.category_eq
        @items = @q.result(distinct: true).where(for_sale: true)
        @hidden = @q.result(distinct: true).where(for_sale: false).order(:id)
        render :index
    end

    def show
        @item = Item.find(params[:id])
        render :show
    end

    def new
        @item = Item.new()
        render :new
    end

    def create
        @item = Item.new(params.require(:item).permit(:picture, :title, :category, :brand, :description, :price, :wattage, :gpu_rank, :for_sale))

        if @item.save

            if @item.category == 'GPU'
                @lesser_ranks = Item.where("gpu_rank >= ?", @item.gpu_rank).and(Item.where.not("id = ?", @item.id))
                
                # Checks if the new gpu is less than all the existing ones in rank and corrects its field to be last. 
                if @lesser_ranks.empty?
                    @item.update!(gpu_rank: Item.where(category: 'GPU').count)
                # Moves all GPU ranks that are less powerful than new GPU back to maintain hierarchy
                else
                    @lesser_ranks.each do |gpu|
                        gpu.update!(gpu_rank: gpu.gpu_rank+1)
                    end
                end

            # Checks if category is not GPU yet gpu_rank exists. Changes gpu_rank to be nil afterward.
            elsif @item.category != 'GPU' and @item.gpu_rank.blank? == false
                @item.update!(gpu_rank: nil)
            end

            flash[:success] = "Item added to database!"
            redirect_to shop_path

        else
            flash.now[:error] = "Item cannot be saved!"
            render :new, status: :unprocessable_entity
        end
    end         

    def edit
        @item = Item.find(params[:id])
        render :edit
    end

    def update
        @item = Item.find(params[:id])
        @old_gpu_rank = @item.gpu_rank

        if @item.update(params.require(:item).permit(:picture, :title, :category, :brand, :description, :price, :wattage, :gpu_rank, :for_sale))

            if @item.category == 'GPU' and @old_gpu_rank != @item.gpu_rank

                # Moves GPU rank of new item to end in case admin accidentally made rank too low. 
                if @item.gpu_rank > Item.where(category: 'GPU').count
                    @item.update!(gpu_rank: Item.where(category: 'GPU').count)
                end

                # If new rank is higher on the hierarchy.
                if @item.gpu_rank < @old_gpu_rank
                    @changed_ranks = Item.where("gpu_rank < ?", @old_gpu_rank).and(Item.where("gpu_rank >= ?", @item.gpu_rank)).and(Item.where.not("id = ?", @item.id))
                    @changed_ranks.each do |gpu|
                        gpu.update!(gpu_rank: gpu.gpu_rank+1)
                    end
                # If new rank is lower on the hierarchy.
                else
                    @changed_ranks = Item.where("gpu_rank > ?", @old_gpu_rank).and(Item.where("gpu_rank <= ?", @item.gpu_rank)).and(Item.where.not("id = ?", @item.id))
                    @changed_ranks.each do |gpu|
                        gpu.update!(gpu_rank: gpu.gpu_rank-1)
                    end
                end
            end

            flash[:success] = "Item edits successfully saved!"
            redirect_to item_path(@item)

        else
            flash.now[:error] = "Item edits could not be saved!"
            render :edit, status: :unprocessable_entity
        end
    end  

    def hide
        @item = Item.find(params[:id])
        
        if @item.for_sale
            @item.update!(for_sale: false)
            flash[:success] = "Item marked not for sale."
            redirect_to item_url(@item), status: :see_other
        else
            @item.update!(for_sale: true)
            flash[:success] = "Item marked for sale."
            redirect_to item_url(@item), status: :see_other
        end
    end

    def add_to_cart
        @cart = current_user.orders.where(status: "Cart").first
        @item = Item.find(params[:id])

        # Adds 1 to quantity if adding to cart an item already in cart.
        if @cart.items.include?(@item)
            @orderItem = @cart.order_items.where(item_id: @item.id).first
            @quantity = @orderItem.quantity + 1
            if @quantity > 10
                @quantity = 10
            end
            @orderItem.update!(quantity: @quantity)

        # Creates new OrderItem entry if item is not already in cart (more common)
        else
            OrderItem.create!(item_id: @item.id, order_id: @cart.id, quantity: 1, price_at_time: @item.price)
        end

        flash[:success] = "Item added to cart!"

        if params[:page] == 'comparison'
            redirect_to display_comparison_url(gpu1: params[:gpu1], gpu2: params[:gpu2]), status: :see_other
        else
            redirect_to item_url(@item), status: :see_other
        end
    end

    def add_to_checklist
        @checklist = current_user.orders.where(status: "Checklist").first
        @item = Item.find(params[:id])

        # Adds 1 to quantity if adding to cart an item already in cart.
        if @checklist.items.include?(@item)
            @orderItem = @checklist.order_items.where(item_id: @item.id).first
            @quantity = @orderItem.quantity + 1
            if @quantity > 10
                @quantity = 10
            end
            @orderItem.update!(quantity: @quantity)
        
        # Creates new OrderItem entry if item is not already in cart (more common)
        else
            OrderItem.create!(item_id: @item.id, order_id: @checklist.id, quantity: 1, price_at_time: @item.price)
        end

        flash[:success] = "Item added to checklist!"

        if params[:page] == 'comparison'
            redirect_to display_comparison_url(gpu1: params[:gpu1], gpu2: params[:gpu2]), status: :see_other
        else
            redirect_to item_url(@item), status: :see_other
        end
    end
end
