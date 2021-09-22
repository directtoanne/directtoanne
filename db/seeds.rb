# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting all users"
User.destroy_all
puts "deleting all recs"
Rec.destroy_all
puts "deleting all forms"
Form.destroy_all
puts "you have to make your User from console now..."