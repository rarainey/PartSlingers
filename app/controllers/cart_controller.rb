class CartController < ApplicationController
    before_action :authenticate_user!

    def cart
        @cart = current_user.orders.where(status: "Cart").first
        @items = @cart.items 

        if @cart.items.where(for_sale: false).empty? == false
            flash.now[:error] = "An item in your cart is no longer for sale."
        end

        render :cart
    end

    def modify_quantity
        @cart = current_user.orders.where(status: "Cart").first
        @item = Item.find(params[:id])
        @quantity = params[:quantity]
        @orderItem = @cart.order_items.where(item_id: @item.id).first
        @orderItem.update!(quantity: @quantity)
        flash[:success] = "Item quantity updated!"
        redirect_to cart_url, status: :see_other
    end

    def destroy
        @cart = current_user.orders.where(status: "Cart").first
        @item = Item.find(params[:id])
        @orderItem = @cart.order_items.where(item_id: @item.id).first
        @orderItem.destroy
        flash[:success] = "Item removed from cart!"
        redirect_to cart_url, status: :see_other
    end
    

end
