# == Schema Information
#
# Table name: shipping_addresses
#
#  id         :bigint           not null, primary key
#  address    :string
#  city       :string
#  name       :string
#  phone_num  :string
#  state      :string
#  zip        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ShippingAddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
