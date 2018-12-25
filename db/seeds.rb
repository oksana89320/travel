# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hotel.delete_all
RoomCategory.delete_all
10.times do
  hotel = Hotel.new
  hotel.name = Faker::Company.name
  hotel.save
  10.times do
    room_category = RoomCategory.new
    room_category.name = Faker::Music.genre
    room_category.hotel_id = hotel.id
    room_category.save
  end
end
