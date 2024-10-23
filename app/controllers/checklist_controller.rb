class ChecklistController < ApplicationController
    before_action :authenticate_user!

    def show
        @checklist = current_user.orders.where(status: 'Checklist').first
        @items = @checklist.items

        @gpus, @cpus, @motherboards, @psus, @rams, @storages, @coolers, @cases = [], [], [], [], [], [], [], [] 
        @checklist_total = 0

        @items.each do |item|
            if item.category == 'GPU' 
                @gpus.push(item)
            elsif item.category == 'Motherboard' 
                @motherboards.push(item) 
            elsif item.category == 'CPU' 
                @cpus.push(item) 
            elsif item.category == 'PSU' 
                @psus.push(item) 
            elsif item.category == 'RAM' 
                @rams.push(item) 
            elsif item.category == 'Storage' 
                @storages.push(item) 
            elsif item.category == 'Cooler' 
                @coolers.push(item) 
            elsif item.category == 'Case' 
                @cases.push(item) 
            end 
            
            @checklist_total += item.price
        end

        render :show
    end

    def cart_to_checklist
        @checklist = current_user.orders.where(status: 'Checklist').first
        @checklist_items = @checklist.items
        @cart = current_user.orders.where(status: 'Cart').first
        @cart_items = @cart.items

        @cart_items.each do |cart_item|

            cart_quantity = @cart.order_items.where(item: cart_item).first.quantity

            if @checklist.items.include?(cart_item)
                checklist_order_item = @checklist.order_items.where(item: cart_item).first

                quantity = checklist_order_item.quantity + cart_quantity
                if quantity > 10
                    quantity = 10
                end

                checklist_order_item.update!(quantity: quantity)
            else
                OrderItem.create!(item: cart_item, order: @checklist, quantity: cart_quantity, price_at_time: cart_item.price)
            end
        end

        flash[:success] = 'The cart items have been added to checklist.'
        redirect_to checklist_url
    end

    def checklist_to_cart
        @cart = current_user.orders.where(status: 'Cart').first

        @checklist = current_user.orders.where(status: 'Checklist').first
        @checklist_items = @checklist.items

        @checklist_items.each do |checklist_item|

            checklist_quantity = @checklist.order_items.where(item: checklist_item).first.quantity

            if @cart.items.include?(checklist_item)
                cart_order_item = @cart.order_items.where(item: checklist_item).first
                
                quantity = cart_order_item.quantity + checklist_quantity
                if quantity > 10
                    quantity = 10
                end

                cart_order_item.update!(quantity: quantity)

                cart_order_item.update!(quantity: quantity)
            else
                OrderItem.create!(item: checklist_item, order: @cart, quantity: checklist_quantity, price_at_time: checklist_item.price)
            end
        end
        
        flash[:success] = 'The checklist items have been added to cart.'
        redirect_to checklist_url
    end

    def destroy
        @checklist = current_user.orders.where(status: 'Checklist').first
        @item = @checklist.items.find(params[:id])
        @orderItem = @checklist.order_items.where(item: @item).first
        @orderItem.destroy
        flash[:success] = 'The item has been successfully removed from checklist.'
        redirect_to checklist_url
    end

    def get_wattage_selections
        @checklist = current_user.orders.where(status: 'Checklist').first
        @items = @checklist.items

        if params[:gpu].present?
            @gpu = params[:gpu]
        else
            @gpu = 0
        end

        if params[:cpu].present?
            @cpu = params[:cpu]
        else
            @cpu = 0
        end

        if params[:motherboard].present?
            @motherboard = params[:motherboard]
        else
            @motherboard = 0
        end

        if params[:psu].present?
            @psu = params[:psu]
        else
            @psu = 0
        end

        if params[:ram].present?
            @ram = params[:ram]
        else
            @ram = 0
        end

        if params[:storage].present?
            @storage = params[:storage]
        else
            @storage = 0
        end

        if params[:cooler].present?
            @cooler = params[:cooler]
        else
            @cooler = 0
        end

        if params[:case].present?
            @case = params[:case]
        else
            @case = 0
        end

        render :get_wattage
    end

    def display_wattage
        @checklist = current_user.orders.where(status: 'Checklist').first
        @items = @checklist.items

        @total_wattage = 0

        if params[:gpu].present?
            @gpu = @items.find(params[:gpu])
            @total_wattage += @gpu.wattage
        end

        if params[:cpu].present?
            @cpu = @items.find(params[:cpu])
            @total_wattage += @cpu.wattage
        end

        if params[:motherboard].present?
            @motherboard = @items.find(params[:motherboard])
            @total_wattage += @motherboard.wattage
        end

        if params[:ram].present?
            @ram = @items.find(params[:ram])
            @total_wattage += @ram.wattage
        end

        if params[:storage].present?
            @storage = @items.find(params[:storage])
            @total_wattage += @storage.wattage
        end

        if params[:cooler].present?
            @cooler = @items.find(params[:cooler])
            @total_wattage += @cooler.wattage
        end

        if params[:case].present?
            @case = @items.find(params[:case])
            @total_wattage += @case.wattage
        end

        @max_wattage = @total_wattage + 100

        if params[:psu].present?
            @psu = @items.find(params[:psu])
        end
        
        render :display_wattage
    end
end
