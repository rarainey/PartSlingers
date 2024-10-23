class BundlesController < ApplicationController
    before_action :authenticate_user!, only: [:bundle_to_cart, :bundle_to_checklist]
    before_action :admin?, only: [:edit, :update]

    def admin?
        if user_signed_in? == false or current_user.admin_status == false
            redirect_to bundles_path
        end
    end


    def index
        @bundles = Bundle.order(:bundles)
        render :index
    end

    def show
        @bundle = Bundle.find(params[:id])
        @price = 0
        [@bundle.gpu, @bundle.cpu, @bundle.motherboard, @bundle.psu, @bundle.ram, @bundle.cooler, @bundle.case, @bundle.storage].each do |item|
            @price = @price + Item.where(id: item).first.price 
        end
        render :show
    end

    def edit
        @bundle = Bundle.find(params[:id])
        render :edit
    end

    def update
        @bundle = Bundle.find(params[:id])

        if @bundle.update(params.require(:bundle).permit(:picture, :title, :description, :gpu, :cpu, :motherboard, :psu, :ram, :storage, :cooler, :case))

            flash[:success] = "Bundle edits successfully saved!"
            redirect_to bundle_path(@bundle)

        else
            flash.now[:error] = "Bundle edits could not be saved!"
            render :edit, status: :unprocessable_entity
        end
    end  

    # Adds all bundle componenets to Cart
    def bundle_to_cart
        @cart = current_user.orders.where(status: "Cart").first
        @bundle = Bundle.find(params[:id])

        [@bundle.gpu, @bundle.cpu, @bundle.motherboard, @bundle.psu, @bundle.ram, @bundle.cooler, @bundle.case, @bundle.storage].each do |item|

            @item = Item.where(id: item).first

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
        end

        flash[:success] = "All bundle items added to cart!"
        redirect_to bundle_url(@bundle), status: :see_other
    end

    # Adds all bundle components to Checklist
    def bundle_to_checklist
        @checklist = current_user.orders.where(status: "Checklist").first
        @bundle = Bundle.find(params[:id])

        [@bundle.gpu, @bundle.cpu, @bundle.motherboard, @bundle.psu, @bundle.ram, @bundle.cooler, @bundle.case, @bundle.storage].each do |item|

            @item = Item.where(id: item).first

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
        end

        flash[:success] = "All bundle items added to checklist!"
        redirect_to bundle_url(@bundle), status: :see_other
    end



end
