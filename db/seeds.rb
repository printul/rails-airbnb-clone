# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 users = User.create([{email: 'vendor@gmail.com', password: 'vendorvendor', first_name: "Jason", last_name: "Cheung", address: "flat 5, little street, London", phone_number: "12345678"},
  {email: 'buyer@gmail.com', password: 'buyerbuyer', first_name: "Stephane", last_name: "Mansour", address: "flat 7, little street, London", phone_number: "87654321"}])

