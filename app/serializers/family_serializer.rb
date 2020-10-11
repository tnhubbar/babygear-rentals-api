class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :contact_number

  has_many :rental_items
end
