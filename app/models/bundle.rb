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
class Bundle < ApplicationRecord

    # Presence validations
    validates :case, presence: true
    validates :cooler, presence: true
    validates :cpu, presence: true
    validates :gpu, presence: true
    validates :motherboard, presence: true
    validates :psu, presence: true
    validates :ram, presence: true
    validates :storage, presence: true
    validates :title, presence: true

    # Category match and exist validations
    validate :valid_id?

    def valid_id?
        # If the if statement results in error, item id does not exist.
        begin
            if Item.where(id: self.gpu).first.category != 'GPU' 
                errors.add(:gpu, "gpu must refer to id of an item whose category='GPU'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.cpu).first.category != 'CPU'
                errors.add(:cpu, "cpu must refer to id of an item whose category='CPU'")
            end
        rescue 
            errors.add(:cpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.motherboard).first.category != 'Motherboard'
                errors.add(:motherboard, "motherboard must refer to id of an item whose category='Motherboard'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.psu).first.category != 'PSU'
                errors.add(:psu, "psu must refer to id of an item whose category='PSU'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.ram).first.category != 'RAM'
                errors.add(:ram, "ram must refer to id of an item whose category='RAM'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.storage).first.category != 'Storage'
                errors.add(:storage, "storage must refer to id of an item whose category='Storage'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.case).first.category != 'Case'
                errors.add(:case, "case must refer to id of an item whose category='Case'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end

        begin
            if Item.where(id: self.cooler).first.category != 'Cooler'
                errors.add(:cooler, "cooler must refer to id of an item whose category='Cooler'")
            end
        rescue 
            errors.add(:gpu, "item id must exist.")
        end
    end 

     # picture attachment
     has_one_attached :picture
     validates :picture, presence: true, if: :after_seed?
     validate :is_image?
 
     # This seeds all items in seeds.rb without raising validation errors from image attachment happening outside of new!()
     def after_seed?
         Bundle.count > 3
     end
 
     # Validates picture is acutally a picture
     def is_image?
         if self.picture.image? == false
             errors.add(:picture, "an uploaded file must be an image.")
         end
     end

end
