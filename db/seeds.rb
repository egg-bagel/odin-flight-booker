# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

airports = Airport.create!([
  {code: "SFO"},
  {code: "IND"},
  {code: "PDX"},
  {code: "SEA"}
])

flights = Flight.create!([
  {departure_time: Date.today,
   flight_duration: "5h 35m",
   departure_airport: Airport.find(2),
   arrival_airport: Airport.find(1)},
  {departure_time: Date.today,
   flight_duration: "6h 02m",
   departure_airport: Airport.find(2),
   arrival_airport: Airport.find(1)},
  {departure_time: Date.tomorrow,
   flight_duration: "1h 32m",
   departure_airport: Airport.find(4),
   arrival_airport: Airport.find(3)},
  {departure_time: DateTime.new(2023, 11, 03, 06, 30, 00),
   flight_duration: "4h 11m",
   departure_airport: Airport.find(1),
   arrival_airport: Airport.find(4)}
])