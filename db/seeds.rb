# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'

require 'rest-client'
require 'json'
require 'pry'

Player.delete_all

    # 10.times do
    #     num = rand.(1..100)
    #     url = "https://api.football-data.org/v2/players/#{num.to_s}"
    #     response = RestClient.get(url, headers={:'X-Auth-Token' => ''})
    #     player = JSON.parse(response.body)
    #     Player.create(name: player.name, position: player.position, dob: player.date_OfBirth, nationality: player.nationality)
    # end
    

User.create(name: "oscar", email: "oscar@email.com", nationality: "Honduras")


Player.create(name: "Oscar", position: "midfield", dob:("1993-5-27"), nationality: "Honduras")
Player.create(name: "Jose", position: "midfield", dob:("1993-4-27"), nationality: "Brazil")
Player.create(name: "Mark", position: "midfield", dob:("1992-1-12"), nationality: "Brazil")
Player.create(name: "Carlos", position: "midfield", dob:("1994-10-12"), nationality: "Brazil")
Player.create(name: "Jake", position: "defense", dob:("1995-11-11"), nationality: "Argentina")
Player.create(name: "Cihat", position: "defense", dob:("1991-6-11"), nationality: "Turkey")
Player.create(name: "Austin", position: "defense", dob:("1990-7-11"), nationality: "Argentina")
Player.create(name: "Pedro", position: "defense", dob:("1992-3-20"), nationality: "Spain")
Player.create(name: "Manuel", position: "goalkeeper", dob:("1993-7-20"), nationality: "Spain")
Player.create(name: "Cris", position: "forward", dob:("1994-4-03"), nationality: "Spain")
Player.create(name: "Antoine", position: "forward", dob:("1995-11-03"), nationality: "England")

Squad.create(name:"Legends", location:"Old Trafford", user_id:1)
Coach.create(name:"Sir Alex Ferguson", age:73, squad_id:1)
