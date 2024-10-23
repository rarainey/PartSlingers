# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin_status           :boolean          default(FALSE), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # One to Many association between User and Order
  has_many(
    :orders,
    class_name: 'Order',
    foreign_key: 'user_id',
    inverse_of: :owner
  )

  after_create :setup_cart_and_checklist

  def setup_cart_and_checklist
    Order.create!(user_id: self.id, subtotal: 0, shipping_cost: 0, tax: 0, total: 0, estimated_arrival: '', status: 'Cart', shipping_address_id: '', payment_id: '')
    Order.create!(user_id: self.id, subtotal: 0, shipping_cost: 0, tax: 0, total: 0, estimated_arrival: '', status: 'Checklist', shipping_address_id: '', payment_id: '')
  end
end
