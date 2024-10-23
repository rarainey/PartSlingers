# == Schema Information
#
# Table name: bundles
#
#  id          :bigint           not null, primary key
#  case        :integer
#  cooler      :integer
#  cpu         :integer
#  description :text
#  gpu         :integer
#  motherboard :integer
#  psu         :integer
#  ram         :integer
#  storage     :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class BundleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
