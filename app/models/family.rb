class Family < ApplicationRecord
    has_many :rental_items
    validates :name, :contact_number, :local, presence: true
end
