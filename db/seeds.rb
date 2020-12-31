# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

User.destroy_all
Trail.destroy_all
Like.destroy_all

  URL_1 = "https://www.hikingproject.com/data/get-trails?lat=30.266666&lon=-97.733330&maxDistance=50&key=200929323-04a970a3635a0936abc6731a619869c2"
  response_1 = RestClient.get(URL_1)
  trails_hash_1 = JSON.parse(response_1)
  austin_trails = trails_hash_1["trails"]

  URL_2 = "https://www.hikingproject.com/data/get-trails?lat=29.749907&lon=-95.358421&maxDistance=50&key=200929323-04a970a3635a0936abc6731a619869c2"
  response_2 = RestClient.get(URL_2)
  trails_hash_2 = JSON.parse(response_2)
  houston_trails = trails_hash_2["trails"]

  def parse_url(url)
   url.gsub('\\', '')
   #we have to include a backslash to escape our first backslash because ruby is asssuming we are using the first backslash to escape a quote
  end

  def create_trails(trail)
  i = 0
  while i < trail.length
    Trail.create(
       name: trail[i]["name"],
       summary: trail[i]["summary"] , 
       stars: trail[i]["stars"],
       location: trail[i]["location"] ,
       length: trail[i]["length"], 
       imgMedium: parse_url(trail[i]["imgMedium"])
       )
    i += 1
  end
end
    
   # trail.length.times doTrail.create(name: trail[i]["name"],summary:trail[i]["summary"] , stars:trail[i]["stars"],location:trail[i]["location"] ,length: 4.6)
create_trails(austin_trails)
create_trails(houston_trails)
      puts "Hello"
  #byebug
   puts "Goodbye"
u1 = User.create(name: "bob", username:"billybob", email:"billybob@email.com", password:"bigbilly")
u2 = User.create(name: "mob", username:"millybob", email:"millybob@email.com", password:"migbilly")
u3 = User.create(name: "nob", username:"nillybob", email:"nillybob@email.com", password:"nigbilly")
u4 = User.create(name: "cob", username:"cillybob", email:"cillybob@email.com", password:"cigbilly")
u5 = User.create(name: "tob", username:"tillybob", email:"tillybob@email.com", password:"tigbilly")
u6 = User.create(name: "blob", username:"blillybob", email:"blillybob@email.com", password:"bligbilly")
u7 = User.create(name: "sob", username:"sillybob", email:"sillybob@email.com", password:"sigbilly")
t1 = Trail.create(name: "short trail",summary: "its  a short trail", stars: 3.5,location:"short trail valley" ,length: 3.5)
l1 = Like.create(user_id: u1, trail_id: t1)
tl1 = TrailList.create(user_id: u1.id, trail_id: t1.id)
tl2 = TrailList.create(user_id: u1.id, trail_id: 110)
#Like.create(user_id: User.all.sample.id, trail_id: Trail.all.sample.id)
h1
   #byebug 
   puts "our project is awesome!"

#    t.string :name
#    t.string :username
#    t.string :email
#    t.string :password_digest
