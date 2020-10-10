# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

family = Family.create(name: "Johnson Family", location: "Jacksonville, FL", contact_number: "843-735-2096")

rental_item1 = RentalItem.create(status: "available", item_name: "stroller", family_id: "1")
rental_item2 = RentalItem.create(status: "unavailable", item_name: "crib", family_id: "1")
