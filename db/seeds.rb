# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Home.create!([
  {text: "Welcome to Moose Manor"},
  {text: "Just a small cabin of 4,700 square feet on 10 acres."}
])
User.create!({:email => "test@gmail.com", :password => "testtest", :password_confirmation => "testtest" })