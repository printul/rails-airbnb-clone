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

