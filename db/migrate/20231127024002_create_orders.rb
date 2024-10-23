class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :shipping_cost
      t.decimal :tax
      t.decimal :total
      t.date :estimated_arrival
      t.string :status
      t.integer :order_num

      t.timestamps
    end
  end
end
