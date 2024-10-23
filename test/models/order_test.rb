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
require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
