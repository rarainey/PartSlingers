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
class Payment < ApplicationRecord
    has_many(
        :orders,
        class_name: 'Order',
        foreign_key: 'order_id',
        inverse_of: :payment
    )

    # presence validations
    validates :card_name, presence: true
    validates :card_cvc, presence: true
    validates :card_exp, presence: true
    validates :card_num, presence: true

    validates :address, presence: true
    validates :city, presence: true
    validates :phone_num, presence: true
    validates :state, inclusion: {in: 
        %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI 
           SC SD TN TX UT VT VA WA WV WI WY), message: "%{value} is not a valid US state"}
    validates :zip, presence: true

    # value validations
    validates :card_cvc, length: {is: 3}, numericality: {only_integer: true}
    validates :card_num, length: {minimum: 10, maximum: 19}, numericality: {only_integer: true}

    validates :phone_num, length: {is: 10}, numericality: {only_integer: true}
    validates :zip, numericality: {only_integer: true}
    validates :state, length: {is: 2}

end
