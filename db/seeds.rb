# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Article.destroy_all

5.times do |i| 
  User.create(
    email: "example#{i}@mail.com",
    password: 'password',
    password_confirmation: 'password'
  )
  Article.create(
  	title: "Vacation #{i}",
  	body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac aliquam tortor. Pellentesque vel pellentesque nibh. Curabitur sit amet diam vitae massa accumsan posuere. Phasellus convallis nisi nec velit auctor, sit amet feugiat turpis pulvinar. Duis tellus lorem, interdum sed felis et, laoreet interdum enim. Morbi venenatis lorem et posuere bibendum. Vivamus mattis purus id tellus lobortis mollis. Quisque eget leo ligula. In ut ex ligula. Donec vitae vestibulum eros. Fusce id diam feugiat, molestie lorem a, commodo ligula. Curabitur non accumsan turpis. In ligula sapien, pulvinar vel eros eget, facilisis gravida libero. In tellus lacus, sagittis elementum erat sit amet, finibus fringilla arcu. Praesent vel lectus at tellus vehicula imperdiet non ac velit.

						Phasellus semper urna in massa posuere fringilla. Donec ut massa odio. Integer accumsan ex eget justo feugiat consequat. Nam auctor nibh ac elit iaculis auctor. Aenean ac nunc vitae ante dignissim ornare. Nullam nec sagittis metus, eget rhoncus risus. Nam et tellus a felis efficitur laoreet. Donec non venenatis sapien, sed ultricies ligula. Aliquam a velit dignissim, gravida odio vitae, auctor dui.

						Donec posuere sagittis arcu, eu euismod lacus congue ut. In faucibus aliquet ante, sed pretium leo auctor non. Aliquam efficitur, dolor ut scelerisque pellentesque, nunc tellus gravida libero, porttitor suscipit lorem ipsum nec sapien. Pellentesque sit amet libero in lectus tempus elementum a et mi. Cras id erat et est pulvinar interdum eu et ligula. Ut vitae venenatis lorem. Fusce tempor sem a mi vulputate aliquet. Pellentesque eu justo et lorem vehicula fermentum vitae lobortis erat. Aliquam erat volutpat. Quisque sit amet est ut justo dignissim accumsan eget quis justo. Mauris commodo eget ex non ullamcorper. Praesent lacinia nisi vitae sapien ultricies, at pellentesque turpis ullamcorper. Proin at iaculis dui. Suspendisse potenti.",
		location: "City, ST",
		image: ""
	)
end
