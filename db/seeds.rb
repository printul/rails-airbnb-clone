
#3 services belonging to user id 1
service_seed_data = [
                      {
                        name: "Very Good Editing",
                        description: "It's some good editing alright",
                        daily_rate: 30.0,
                        user_id: 1,
                        category: "Editing"
                      },

                      {
                        name: "Hollywood-style Filming",
                        description: "Look like hollywood star",
                        daily_rate: 333.0,
                        user_id: 1,
                        category: "Filming"
                      },

                      {
                        name: "Hollywood-style filimng with really good editing",
                        description: "Look like hollywood star as well as make it look like movie",
                        daily_rate: 9001.0,
                        user_id: 1,
                        category: "Both"
                      }
                    ]
service_seed_data.each { |service_info| Service.create(service_info) }

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 users = User.create([{email: 'vendor@gmail.com', password: 'vendorvendor', first_name: "Jason", last_name: "Cheung", address: "flat 5, little street, London", phone_number: "12345678"},
  {email: 'buyer@gmail.com', password: 'buyerbuyer', first_name: "Stephane", last_name: "Mansour", address: "flat 7, little street, London", phone_number: "87654321"}])


