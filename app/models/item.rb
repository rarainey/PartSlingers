# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  brand       :string
#  category    :string
#  description :text
#  for_sale    :boolean
#  gpu_rank    :integer
#  price       :decimal(, )
#  title       :string
#  wattage     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Item < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["brand", "category", "description", "price", "title"]
    end

    def self.ransackable_associations(auth_object = nil)
        []
    end

    # Many to Many association between Order and Items
    has_many(
        :order_items,
        class_name: 'OrderItem',
        foreign_key: 'item_id',
        inverse_of: :item,
        dependent: :destroy
    )

    has_many :orders, through: :order_items

    # presence validations
    validates :title, presence: true
    validates :description, presence: true
    validates :category, presence: true
    validates :brand, presence: true
    validates :price, presence: true
    validates :wattage, presence: true

    # greater than / equal to zero validations
    validates :price, numericality: { greater_than_or_equal_to: 0, message: "price cannot be less than 0" }
    validates :wattage, numericality: { greater_than_or_equal_to: 0, message: "wattage cannot be less than 0" }

    # category validation
    validates :category, inclusion: { in: %w(CPU GPU Motherboard PSU RAM Case Cooler Storage), message: "%{value} is not a valid PC part type"}

    # gpu_rank validation
    validates :gpu_rank, presence: true, if: :needs_rank?
    validates :gpu_rank, numericality: { greater_than_or_equal_to: 0, message: "gpu rank cannot be less than 0"}, if: :needs_rank?

    def needs_rank?
        self.category == "GPU"
    end

    # picture attachment
    has_one_attached :picture
    validates :picture, presence: true, if: :after_seed?
    validate :is_image?

    # This seeds all items in seeds.rb without raising validation errors from image attachment happening outside of new!()
    def after_seed?
        Item.count > 79
    end

    # Validates picture is acutally a picture
    def is_image?
        if self.picture.image? == false
            errors.add(:picture, "an uploaded file must be an image.")
        end
    end

end
