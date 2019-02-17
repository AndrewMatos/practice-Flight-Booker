# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Airport.create!(code: "MAYQ")
Airport.create!(code: "NYC")
Airport.create!(code: "SFO")
Airport.create!(code: "FMA")


Flight.create!(start:Time.now + 1.month, duration: 3,from_airport_id: 1 ,to_airport_id: 4)
Flight.create!(start:Time.now + 1.month, duration: 6,from_airport_id: 1 ,to_airport_id: 4)
Flight.create!(start:Time.now + 2.month, duration: 1,from_airport_id: 2 ,to_airport_id: 1)
Flight.create!(start:Time.now + 1.week, duration: 4,from_airport_id: 4 ,to_airport_id: 2)
Flight.create!(start:Time.now + 3.month, duration: 3,from_airport_id: 1 ,to_airport_id: 4)
Flight.create!(start:Time.now + 7.day, duration: 3,from_airport_id: 3 ,to_airport_id: 1)

params = {flight: {to_airport_id: "4", from_airport_id: "1", start: "2019-03-16 04:30:17"}}
