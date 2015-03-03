# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
# Article.destroy_all

# 5.times do 
#   User.create(
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password'
#   )
# end

5.times do
  Article.create(
  	title: Faker::Lorem.words(3).join(" ").capitalize,
  	body: Faker::Lorem.paragraphs(3).join('\n'),
    location: Faker::Address.city + ", " + Faker::Address.state_abbr,
		user_id: Faker::Number.digit,
    google_id: "ChIJ81iBrt--QIYRHbTlbjZLlVw"
	)
end
