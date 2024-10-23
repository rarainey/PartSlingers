class CheckoutController < ApplicationController
    before_action :authenticate_user!
    before_action :cart_not_empty?
    before_action :all_items_for_sale?

    # User should not be able to checkout with an empty cart.
    def cart_not_empty?
        @cart = current_user.orders.where(status: "Cart").first
        @items = @cart.items 
        
        if @items.empty?
            flash[:error] = "Cannot checkout with an empty cart."
            redirect_to cart_url
        end
    end

    # User should not be able to checkout with an item marked "not for sale".
    def all_items_for_sale?
        @cart = current_user.orders.where(status: "Cart").first

        if @cart.items.where(for_sale: false).empty? == false
            # The flash is done cart-side: flash[:error] = "An item in your cart is not for sale."
            redirect_to cart_url
        end
    end

    def shipping
        @cart = current_user.orders.where(status: "Cart").first

        # Checks whether to create a new shipping item or edit old one
        if @cart.shipping_address.blank?
            @shipping = ShippingAddress.new()
        else
            @shipping = @cart.shipping_address
        end
        render :shipping
    end

    def update_shipping
        @cart = current_user.orders.where(status: "Cart").first
        @shipping = @cart.shipping_address
        if @shipping.update!(params.require(:shipping_address).permit(:address, :city, :state, :zip, :phone_num, :name))
            redirect_to payment_url
        else
            flash.now[:error] = 'Shipping Address Invalid'
            render :shipping, status: :unprocessable_entity
        end
    end

    def new_shipping
        @cart = current_user.orders.where(status: "Cart").first
        @shipping = ShippingAddress.new(params.require(:shipping_address).permit(:address, :city, :state, :zip, :phone_num, :name))
        
        # This is used in the case that the user presses the back button in the browser. This way it will delete the old address. 
            # When you a user goes back using that button, it uses the stashed "create", thus it creates a new entry regardless of what they input.
        if @cart.shipping_address.nil? == false
            @old_shipping = @cart.shipping_address
            @cart.update!(shipping_address_id: '')
            @old_shipping.destroy
        end
        if @shipping.save
            @cart.update!(shipping_address_id: @shipping.id)
            redirect_to payment_url
        else
            flash.now[:error] = 'Shipping Address Invalid'
            render :shipping, status: :unprocessable_entity
        end
    end

    def payment
        @cart = current_user.orders.where(status: "Cart").first

        # Checks whether to create a new payment item or edit old one
        if @cart.payment.blank?
            @payment = Payment.new()
        else
            @payment = @cart.payment
        end
        render :payment
    end

    def update_payment
        @cart = current_user.orders.where(status: "Cart").first
        @payment = @cart.payment
        if (@payment.card_exp.year == Date.current.year) and (@payment.card_exp.month <= Date.current.month)
            flash.now[:error] = 'Your card is expired!'
            render :payment, status: :unprocessable_entity
        elsif @payment.update(params.require(:payment).permit(:address, :city, :state, :zip, :phone_num, :card_num, :card_name, :card_exp, :card_cvc))
            redirect_to review_url
        else
            flash.now[:error] = 'Payment Invalid'
            render :payment, status: :unprocessable_entity
        end
    end

    def new_payment
        @cart = current_user.orders.where(status: "Cart").first
        @payment = Payment.new(params.require(:payment).permit(:address, :city, :state, :zip, :phone_num, :card_num, :card_name, :card_exp, :card_cvc))
        # This is used in the case that the user presses the back button in the browser. This way it will delete the old payment. 
            # When you a user goes back using that button, it uses the stashed "create", thus it creates a new entry regardless of what they input.
        if @cart.payment.nil? == false
            @old_payment = @cart.payment
            @cart.update!(payment_id: '')
            @old_payment.destroy
        end
        if (@payment.card_exp.year == Date.current.year) and (@payment.card_exp.month <= Date.current.month)
            flash.now[:error] = 'Your card is expired!'
            render :payment, status: :unprocessable_entity
        elsif @payment.save
            @cart.update!(payment_id: @payment.id)
            redirect_to review_url
        else
            flash.now[:error] = 'Payment Information Invalid'
            render :payment, status: :unprocessable_entity
        end
    end

    def review
        @cart = current_user.orders.where(status: "Cart").first
        @items = @cart.items 
        @shipping = @cart.shipping_address
        @payment = @cart.payment
        
        # Prevents error from skipping from skipping shipping or payment via url
        if @shipping.nil?
            flash[:error] = 'Please enter a shipping address before continuing.'
            redirect_to shipping_url
        elsif @payment.nil?
            flash[:error] = 'Please enter payment information before continuing.'
            redirect_to payment_url
        
        else
            render :review
        end
    end

    def order
        @cart = current_user.orders.where(status: "Cart").first
        @items = @cart.items

        @subtotal = 0 
        @items.each do |item| 
            @quantity = @cart.order_items.where(item_id: item.id).first.quantity
            @subtotal = @subtotal + (item.price * @quantity)
            @orderItem = OrderItem.where(item_id: item.id).first
            if item.price != @orderItem.price_at_time
                @orderItem.update!(price_at_time: item.price)  
            end
        end
        @cart.update!(subtotal: @subtotal, tax: (@subtotal * 0.07), shipping_cost: 6.99)
        @cart.update!(total: (@cart.subtotal + @cart.tax + @cart.shipping_cost))

        @time = Date.today
        @time = @time + 5
        @cart.update!(estimated_arrival: @time)

        @cart.update!(status: 'Processing') 

        @cart.update!(order_num: Order.where(status: ["Processing", "Shipped", "Delivered"]).count)

        # Replacing old cart order
        Order.create!(user_id: current_user.id, subtotal: 0, shipping_cost: 0, tax: 0, total: 0, estimated_arrival: '', status: 'Cart', shipping_address_id: '', payment_id: '')
        
        flash[:success] = "Order Placed!"
        redirect_to receipt_url(@cart.order_num), status: :see_other
    end 
end
