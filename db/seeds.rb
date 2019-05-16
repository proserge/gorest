# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: "Il Molino",
                    cuisine: "italian",
                    address: "Kiev, Khreschatyk, 18",
                    phone: "+380999999999"
                  )

Restaurant.create(name: "Borsch",
                    cuisine: "ukrainian",
                    address: "Kiev, Khmelnitskogo, 11",
                    phone: "+380889999999"
                  )

WorkingHour.create(restaurant_id: 1,
                    open_hour: 45, # Mo 9:30
                    close_hour: 240
                  )

WorkingHour.create(restaurant_id: 1,
                    open_hour: 396,
                    close_hour: 432
                  )

WorkingHour.create(restaurant_id: 1,
                    open_hour: 684,
                    close_hour: 792
                  )

WorkingHour.create(restaurant_id: 2,
                    open_hour: 108,
                    close_hour: 240
                  )
