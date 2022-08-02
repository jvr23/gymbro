# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "**********************************"
puts  "Creating account types"
puts "**********************************"
Account.create([{name: 'admin'}, {name: 'owner'}, {name: 'free'}, {name: 'premium'}])
puts "................................"
puts "Done"
puts "................................"
puts "**********************************"
puts  "Creating users"
puts "**********************************"
User.create([{name: 'admin', lastname: 'admin', age: 999, account_id: 1, email: "admin@gymbro.com", password:123123},
  {name: 'owner', lastname: 'owner', age: 999, account_id: 2, email: "owner@gymbro.com", password:123123},
  {name: 'free', lastname: 'free', age: 999, account_id: 3, email: "free@gymbro.com", password:123123},
  {name: 'premium', lastname: 'premium', age: 999, account_id: 4, email: "premium@gymbro.com", password:123123}])
  puts "................................"
  puts "Done"
  puts "................................"
  puts "**********************************"
  puts "Creating Gyms"
  puts "**********************************"
  Gym.create([{name:"Fitness", address:"Calle del Desierto #33 Col. Suprema Torreón, Coah.", opens:"6:00", closes:"22:00", user_id: 2},
    {name:"Denver", address:"Calle del agua #333 Col. Colonial Durango, Dgo.", opens:"7:00", closes:"21:00", user_id: 2},
    {name:"Musculosos", address:"Calle del bicep #99 Col. Mancuernas Zacatecas, Zac.", opens:"6:30", closes:"23:00", user_id: 2},
    {name:"Jurassic Gym", address:"Calle del Aire #33 Col. Inferior Mazatlan, Sin.", opens:"5:00", closes:"00:00", user_id: 2},])
    puts "Done"
    puts "................................"
    
    