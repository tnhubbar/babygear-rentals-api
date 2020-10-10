class RentalItem < ApplicationRecord
    belongs_to :family
    validates :item_name, presence: true 
end
