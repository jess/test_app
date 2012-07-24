# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

m = Manufacturer.create(name: "Big Products")
file = File.open(File.join(Rails.root, "/app/assets/images/boxer.jpg"))
Product.create(name: "Test Product 1", price: 10, manufacturer_id: m.id, image: file)
Product.create(name: "Test Product 2", price: 11, manufacturer_id: m.id, image: file)
Product.create(name: "Test Product 3", price: 12, manufacturer_id: m.id, image: file)
Product.create(name: "Test Product 4", price: 13, manufacturer_id: m.id, image: file)
