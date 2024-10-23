# == Schema Information
#
# Table name: orders
#
#  id                  :bigint           not null, primary key
#  estimated_arrival   :date
#  order_num           :integer
#  shipping_cost       :decimal(, )
#  status              :string
#  subtotal            :decimal(, )
#  tax                 :decimal(, )
#  total               :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  payment_id          :bigint
#  shipping_address_id :bigint
#  user_id             :bigint
#
# Indexes
#
#  index_orders_on_payment_id           (payment_id)
#  index_orders_on_shipping_address_id  (shipping_address_id)
#  index_orders_on_user_id              (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (payment_id => payments.id)
#  fk_rails_...  (shipping_address_id => shipping_addresses.id)
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
    
    validates :status, inclusion: { in: %w(Cart Checklist Processing Shipped Delivered), message: "%{value} is not a valid order stage"}

    # One to Many association between User and Order
    belongs_to(
        :owner,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :orders
    )

    # One to Many association between Shipping Address and Order
    belongs_to(
        :shipping_address,
        class_name: 'ShippingAddress',
        foreign_key: 'shipping_address_id',
        inverse_of: :orders,
        optional: true
    )

    # One to Many association between Payment and Order
    belongs_to(
        :payment,
        class_name: 'Payment',
        foreign_key: 'payment_id',
        inverse_of: :orders,
        optional: true
    )
    
    # Many to Many association between Item and Order
    has_many(
        :order_items,
        class_name: 'OrderItem',
        foreign_key: 'order_id',
        inverse_of: :order,
        dependent: :destroy
    )

    has_many :items, through: :order_items
end
