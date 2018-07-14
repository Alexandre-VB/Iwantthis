# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


roxana = User.new(email: 'roxy@gmail.com', password: '123456')
roxana.save
alex = User.new(email: 'alex@gmail.com', password: '123456')
alex.save

puts "user created"

Topic.destroy_all


robe = Topic.new(description: 'looking this kind of dress', user_id: roxana.id)
robe.save

puts "topic created"

Answer.destroy_all


answer = Answer.new(description: 'www.zara.com', user_id: alex.id, topic_id: robe.id)
answer.save
puts "answer created"
