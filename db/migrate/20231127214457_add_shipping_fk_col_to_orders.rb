class AddShippingFkColToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :shipping_address, foreign_key: true
  end
end
