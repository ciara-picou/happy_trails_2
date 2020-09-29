# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
API_KEY = ENV["API_KEY"]
  
    URL = "https://www.hikingproject.com/data/"
  
    # Method receives user's input and calls the API with it.
    # def self.search(term:, location:)
    #   params = {
    #     term: term,
    #     location: location,
    #     limit: 10,
    #     sort_by: "rating",
    #     radius: 16_000,#
    #   }
      response_1 = HTTP.get("https://www.hikingproject.com/data/get-trails?lat=30.266666&lon=-97.733330&maxDistance=50&key=200929323-04a970a3635a0936abc6731a619869c2").to_s

      response_2 = HTTP.get("https://www.hikingproject.com/data/get-trails?lat=29.749907&lon=-95.358421&maxDistance=50&key=200929323-04a970a3635a0936abc6731a619869c2").to_s
   
   
      puts "Hello"
   #byebug 
   puts "Goodbye"

u1 = User.create(name: "bob")
t1 = Trail.create(name: "short trail",summary: "its  a short trail", stars: 3.5,location:"short trail valley" ,length: 4.6)
l1 = Like.create(user_id: u1, trail_id: t1)