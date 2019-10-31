# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users') #commande pour reset l'id 
Gossip.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('gossips') #commande pour reset l'id 
City.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities') #commande pour reset l'id 

10.times do
	c = City.create(name: Faker::Address.city ,zipcode:Faker::Address.zip_code)
end

20.times do
	u = User.create(name: Faker::TvShows::Buffy.character,email: Faker::Internet.email,
	description:Faker::TvShows::Buffy.quote,
	birthdate: (rand(Date.civil(1950, 1, 1)..Date.civil(2005, 12, 31)).to_s),city_id:rand(1..10) )
end

40.times do
	g = Gossip.create(content: Faker::ChuckNorris.fact,title: Faker::Beer.brand ,
	date: (rand(Date.civil(2019, 1, 1)..Date.civil(2020, 12, 31)).to_s),
	user_id: rand(1..10))
end

