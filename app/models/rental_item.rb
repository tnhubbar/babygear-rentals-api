class RentalItem < ApplicationRecord
    belongs_to :family
    validates :item_name, :condition, presence: true 
end
