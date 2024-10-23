class OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :exist?, only: [:show]
    before_action :require_permission, only: [:show]
    
    def index
        @orders = Order.where(user_id: current_user.id).and(Order.where(status: ['Processing', 'Shipped', 'Delivered']))
        render :index
    end

    def show
        @order = Order.find_by(order_num: params[:id])
        @items = @order.items 
        @shipping = @order.shipping_address
        @payment = @order.payment
        render :receipt
    end

    def exist?
        if Order.find_by(order_num: params[:id]).nil?
            redirect_to home_path
        end
    end

    def require_permission
        if Order.find_by(order_num: params[:id]).owner != current_user
          redirect_to home_path
        end
    end

end
