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
adrien = User.new(email: 'adrien@gmail.com', password: '123456')
adrien.save
benj = User.new(email: 'benj@gmail.com', password: '123456')
benj.save
gelly = User.new(email: 'gelly@gmail.com', password: '123456')
gelly.save

puts "user created"

Topic.destroy_all


robe = Topic.new(description: 'looking this kind of dress', user_id: roxana.id)
url = "http://static1.puretrend.com/articles/5/72/58/5/@/817969-le-top-look-de-rue-petite-robe-580x0-3.jpg"
robe.remote_photo_url = url
robe.save

puts "topic created"

Answer.destroy_all


answer = Answer.new(description: 'www.zara.com', user_id: alex.id, topic_id: robe.id)
answer.save

answer_gerald = Answer.new(description: 'www.hm.com', user_id: gelly.id, topic_id: robe.id)
answer_gerald.save

answer_adrien = Answer.new(description: 'www.leboncoin.com', user_id: adrien.id, topic_id: robe.id)
answer_adrien.save


puts "answers created"
