# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

family = Family.create(name: "Johnson Family", location: "Jacksonville, FL", contact_number: "843-735-2096")

rental_item1 = RentalItem.create(status: "available", category: "Transport Items", item_name: "Stroller", family_id: "1")
rental_item2 = RentalItem.create(status: "available", item_name: "Black Crib", family_id: "1", category: "Furniture")
rental_item3 = RentalItem.create(status: "available", item_name: "High Chair", family_id: "1", category: "Furniture")

family2 = Family.create(name: "Scottsdale Family", location: "Boston, MA", contact_number: "857-294-8321")

rental_item4 = RentalItem.create(status: "available", category: "Toys", item_name: "Lego Set", family_id: "2")
rental_item5 = RentalItem.create(status: "available", item_name: "Baby Swing", family_id: "2", category: "Toys")
rental_item6 = RentalItem.create(status: "available", item_name: "Baby Dresser", family_id: "2", category: "Furniture")

