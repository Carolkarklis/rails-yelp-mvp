# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "00000000",
    category: "japanese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "00000000",
    category: "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "00000000",
    category: "french"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

paris6 = Restaurant.create(name: "Paris 6", address: "Av Paulista,200", phone: "1234-5678", category: "french")
yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = paris6
yummy.save
