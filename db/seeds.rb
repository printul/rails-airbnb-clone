# creates a vendor user id: 1, customer user id: 2
# creates 3 services belonging to vendor user id: 1
# creates 3 bookings with customer user id: 2,
# for each service of vendor user id: 1

user_seed_data = [
                  { email: 'vendor@gmail.com',
                    password: 'vendorvendor',
                    first_name: "Jason",
                    last_name: "Cheung",
                    address: "flat 5, little street, London",
                    phone_number: "12345678"
                  },

                  {
                    email: 'buyer@gmail.com',
                    password: 'buyerbuyer',
                    first_name: "Stephane",
                    last_name: "Mansour",
                    address: "flat 7, little street, London",
                    phone_number: "87654321"
                  }
                 ]

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

booking_seed_data = [
                      {
                        service_id: 1,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 1),
                        end_date: DateTime.new(2017, 6, 10),
                        total_cost: 300.0,
                        order_status: "Pending"
                      },

                      {
                        service_id: 2,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 3),
                        end_date: DateTime.new(2017, 6, 5),
                        total_cost: 999.0,
                        order_status: "Awaiting Payment"
                      },

                      {
                        service_id: 3,
                        user_id: 2,
                        start_date: DateTime.new(2017, 7, 1),
                        end_date: DateTime.new(2017, 7, 10),
                        total_cost: 90010.0,
                        order_status: "Declined"
                      }
                    ]

user_seed_data.each { |user_info| User.create(user_info)}
service_seed_data.each { |service_info| Service.create(service_info) }
booking_seed_data.each { |booking_info| Booking.create(booking_info) }

