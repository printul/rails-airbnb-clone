# creates a vendor user id: 1, customer user id: 2
# creates 3 services belonging to vendor user id: 1
# creates 3 bookings with customer user id: 2,
# for each service of vendor user id: 1

Booking.destroy_all
Service.destroy_all
User.destroy_all

COMPANIES_URL = {
                fashion: 'http://res.cloudinary.com/printul/image/upload/v1496383113/catwalk_uak1ir.jpg',
                flying: 'http://res.cloudinary.com/printul/image/upload/v1496383108/flying_avhugf.jpg',
                documentary: 'http://res.cloudinary.com/printul/image/upload/v1496383114/trekking-hiking-group-alpine-53214_o0dm0b.jpg',
                food: 'http://res.cloudinary.com/printul/image/upload/v1496384590/food_pqyh7z.jpg',
                surfing: 'http://res.cloudinary.com/printul/image/upload/v1496384612/surfing_eqbhdz.jpg'
                }

user_seed_data = [
                  { email: 'vendor@gmail.com',
                    password: 'vendorvendor',
                    first_name: "Jason",
                    last_name: "Cheung",
                    address: "14 Elder Street, London",
                    phone_number: "+44 07593 933 726"
                  },

                  {
                    email: 'buyer@gmail.com',
                    password: 'buyerbuyer',
                    first_name: "Stephane",
                    last_name: "Mansour",
                    address: "1 Picadilly Street, London",
                    phone_number: "+44 91834 847 312"
                  },

                  {
                    email: 'moviemaker@gmail.com',
                    password: '123456',
                    first_name: "John",
                    last_name: "Galt",
                    address: "17 Hyde Park Square, London",
                    phone_number: "+44 03497 738 102"
                  }
                 ]

SERVICE_CATEGORIES = ["Filming", "Editing", "Both"]

service_seed_data = [
                      {
                        name: "Professional Edit Co",
                        description: "World class editing for amateur filmed creations",
                        daily_rate: 30.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[1],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496331226/editphotodesk_ysteoh.jpg', 'http://res.cloudinary.com/printul/image/upload/v1496331226/editphotodesk_ysteoh.jpg', 'http://res.cloudinary.com/printul/image/upload/v1496331226/editphotodesk_ysteoh.jpg']
                      },

                      {
                        name: "Hollywood-style Filming",
                        description: "Say good-bye to reality, you'll move and look like a movie star",
                        daily_rate: 333.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[0],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496329733/helicopter_okveor.jpg']
                      },

                      {
                        name: "Creative Studios",
                        description: "Full front-end processing, on-site professionals to film with dedicated post-production team",
                        daily_rate: 2000.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[2],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496329732/film_editing_kxezxs.jpg']
                      },

                      {
                        name: "Snippet style focused filming",
                        description: "Focused on individual, focuses on bringing out persona",
                        daily_rate: 45.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[1],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496329732/focused_shot_q5m2ev.jpg']
                      },

                      {
                        name: "Fashion Videos",
                        description: "From catwalks to video shoots, aspiring models to world class inspirers.",
                        daily_rate: 1000.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[1],
                        photo_urls: [COMPANIES_URL[:fashion]]
                      },

                      {
                        name: "Sky labs",
                        description: "We love flying and we love filming people who love flying.",
                        daily_rate: 200.0,
                        user_id: 3,
                        category: SERVICE_CATEGORIES[1],
                        photo_urls: [COMPANIES_URL[:flying]]
                      },

                      {
                        name: "Documentary avenue",
                        description: "Non-fiction is a our thing. We travel the world and work with content producers to showcase reality. ",
                        daily_rate: 3000.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[3],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496329732/film_editing_kxezxs.jpg']
                      },

                      {
                        name: "Gnarly Studios",
                        description: "We're not afraid of getting wet. Big waves and big surf are our speciality.",
                        daily_rate: 2000.0,
                        user_id: 1,
                        category: SERVICE_CATEGORIES[1],
                        photo_urls: ['http://res.cloudinary.com/printul/image/upload/v1496329732/film_editing_kxezxs.jpg']
                      },
                    ]

ORDER_STATUSES = ["Pending", "Awaiting Payment", "Completed", "Declined", "Accepted"]

booking_seed_data = [
                      {
                        service_id: 1,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 1),
                        end_date: DateTime.new(2017, 6, 10),
                        total_cost: 270.0,
                        order_status: ORDER_STATUSES[2],
                        note: "Please call me back so we can arrange a meeting time"
                      },

                      {
                        service_id: 2,
                        user_id: 2,
                        start_date: DateTime.new(2017, 6, 3),
                        end_date: DateTime.new(2017, 6, 5),
                        total_cost: 666.0,
                        order_status: ORDER_STATUSES[2],
                        note: "I'm having issues with my payment, please contact me via email"
                      },

                      {
                        service_id: 3,
                        user_id: 2,
                        start_date: DateTime.new(2017, 7, 1),
                        end_date: DateTime.new(2017, 7, 10),
                        total_cost: 18000.0,
                        order_status: ORDER_STATUSES[2],
                        note: "Special requests: need extra staff on site during the last three days of shooting. Please reach out to discuss."
                      }
                    ]

user_seed_data.each { |user_info| User.create(user_info)}
service_seed_data.each do |service_info|
  s = Service.create!(service_info.except(:photo_urls))
  s.photo_urls = service_info[:photo_urls]
end
booking_seed_data.each { |booking_info| Booking.create(booking_info) }

