# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: "Jeremy", last_name: "Brenner", username: "jeremy", email: "admin@admin.com", address: "Oakland", password: "jeremy", password_confirmation: "jeremy",  phone:"1")
Swarm.create(name: 'Buddy', email: 'Buddy@cats.com', phone: '9991234567', address: "Oakland", description: "beeeeeez")