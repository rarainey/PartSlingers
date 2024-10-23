# == Schema Information
#
# Table name: order_items
#
#  id            :bigint           not null, primary key
#  price_at_time :decimal(, )
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  item_id       :bigint           not null
#  order_id      :bigint           not null
#
# Indexes
#
#  index_order_items_on_item_id   (item_id)
#  index_order_items_on_order_id  (order_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (order_id => orders.id)
#
class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  belongs_to(
    :order,
    class_name: 'Order',
    foreign_key: 'order_id',
    inverse_of: :order_items
  )
 
  belongs_to(
    :item,
    class_name: 'Item',
    foreign_key: 'item_id',
    inverse_of: :order_items
  )
end
