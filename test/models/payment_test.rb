# == Schema Information
#
# Table name: payments
#
#  id         :bigint           not null, primary key
#  address    :string
#  card_cvc   :string
#  card_exp   :datetime
#  card_name  :string
#  card_num   :string
#  city       :string
#  phone_num  :string
#  state      :string
#  zip        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
