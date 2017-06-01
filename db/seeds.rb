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
                  },

                  {
                    email: 'moviemaker@gmail.com',
                    password: '123456',
                    first_name: "John",
                    last_name: "Galt",
                    address: "1, Broad Avenue, London",
                    phone_number: "87654321"
                  }
                 ]

SERVICE_CATEGORIES = ["Filming", "Editing", "Both"]

service_seed_data = [
                      {
                        name: "Professional Edit Co",
                        description: "World class editing for amateur filmed creations",
                        daily_rate: 30.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[1]
                      },

                      {
                        name: "Hollywood-style Filming",
                        description: "Say good-bye to reality, you'll move and look like a movie star",
                        daily_rate: 333.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[2]
                      },

                      {
                        name: "Creative Studios",
                        description: "Full front-end processing, on-site professionals to film with dedicated post-production team",
                        daily_rate: 2000.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[2]
                      },

                      {
                        name: "Snipet style focused filming",
                        description: "Focused on individual, focuses on bringing out persona",
                        daily_rate: 45.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[1]
                      }
                    ]

ORDER_STATUSES = ["Pending", "Awaiting Payment", "Completed", "Declined", "Accepted"]

booking_seed_data = [
                      {
                        service_id: 1,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 1),
                        end_date: DateTime.new(2017, 6, 10),
                        total_cost: 30.0,
                        order_status: ORDER_STATUSES[2]
                      },

                      {
                        service_id: 2,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 3),
                        end_date: DateTime.new(2017, 6, 5),
                        total_cost: 200.0,
                        order_status: ORDER_STATUSES[2]
                      },

                      {
                        service_id: 3,
                        user_id: 2,
                        start_date: DateTime.new(2017, 7, 1),
                        end_date: DateTime.new(2017, 7, 10),
                        total_cost: 5000.0,
                        order_status: ORDER_STATUSES[2]
                      }
                    ]

user_seed_data.each { |user_info| User.create(user_info)}
service_seed_data.each { |service_info| Service.create(service_info) }
booking_seed_data.each { |booking_info| Booking.create(booking_info) }

