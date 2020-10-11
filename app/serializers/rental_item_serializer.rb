class RentalItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :status, :family_id
end
