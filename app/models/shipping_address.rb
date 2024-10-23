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
class ShippingAddress < ApplicationRecord
    has_many(
        :orders,
        class_name: 'Order',
        foreign_key: 'order_id',
        inverse_of: :shipping_address
    )

    # presence validations
    validates :address, presence: true
    validates :city, presence: true
    validates :name, presence: true
    validates :phone_num, presence: true
    validates :state, presence: true
    validates :zip, presence: true

    # value validations
    validates :phone_num, length: {is: 10}, numericality: {only_integer: true}
    validates :zip, numericality: {only_integer: true}
    validates :state, inclusion: {in: 
        %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI 
           SC SD TN TX UT VT VA WA WV WI WY), message: "%{value} is not a valid US state"}


end
