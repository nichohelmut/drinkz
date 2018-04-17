# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Request.destroy_all
Event.destroy_all
User.destroy_all

User.create(first_name: "nicholas", last_name: "Utikal", dedication: "Teacher",  location_address: "Friedrichstraße 12, 10969 Berlin", age: 25, email: "admin@email.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Herman", last_name: "peters", dedication: "Teacher",  location_address: "Askanischer Pl. 4, 10963 Berlin", age: 25, email: "nicholas1@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Lola", last_name: "günther", dedication: "Teacher", location_address: "Friedrichstraße 43-45, 10117 Berlin" , age: 25, email: "nicholas2@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Mike", last_name: "stevens", dedication: "Teacher", location_address: "Markgrafenstraße 16-16a, 10969 Berlin", age: 25, email: "nicholas3@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "John", last_name: "hans", dedication: "Teacher", location_address: "Alte Jakobstraße 124-128, 10969 Berlin", age: 25, email: "nicholas4@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Tim", last_name: "what", dedication: "Teacher", location_address: "Lindenstraße 9-14, 10969 Berlin", age: 25, email: "nicholas5@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")

Event.create!(user_id: User.all.sample.id,event_picture: "Party",  location_name: "Kater Blau Club", location_address: "Holzmarktstraße 25, 10243 Berlin", time: Time.now, event_description:" I am going to a Club, anybody wants to join :)? ")
Event.create!(user_id: User.all.sample.id,event_picture: "Shopping", location_name: "KaDeWe Shopping Mall", location_address: "Tauentzienstraße 21-24, 10789 Berlin", time: Time.now, event_description:"You Guys want to see the biggest and nicest Mall in Berlin? Hit me up ")
Event.create!(user_id: User.all.sample.id,event_picture: "Bar", location_name: "Irish Pub Mitte", location_address: "Schiffbauerdamm 1, 10117 Berlin", time: Time.now, event_description:"I am going Bar hopping with some friends, we start at an irish pub in mitte, Join us ;) ")
Event.create!(user_id: User.all.sample.id,event_picture: "Sport", location_name: "Tiergarten", location_address: "Tiergarten, Berlin", time: Time.now, event_description:"We are having a football match in Tiergarten. Only people who really want to play Football!! ")
Event.create!(user_id: User.all.sample.id,event_picture: "Park", location_name: "Görlitzer Park", location_address: "Görlitzerstraße, Berlin", time: Time.now, event_description:"Guys we are doing some Yoga in the Görlitzer Park")


