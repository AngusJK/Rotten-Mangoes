# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'faker'



 users = []
users << User.create(email: 'bob@bob.com', password_digest: '123456', firstname: 'Bob', lastname: 'Bob', is_admin: true)

User.create(email: Faker::Internet.email, password_digest: '123456', firstname: Faker::Name.first_name , lastname: Faker::Name.last_name , is_admin: true)

50.times do 
  users << User.create(
    email: Faker::Internet.email,
    password_digest: "123456" , 
    firstname: Faker::Name.first_name ,
    lastname: Faker::Name.last_name ,
    is_admin: false )

end

# User.create(email: 'bob@yahoo.com', password_digest: 'bobbob', firstname: 'Bob', lastname: 'Richards', is_admin: true)