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

User.create(first_name: "nicholas", last_name: "Utikal", age: 25, email: "admin@email.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Herman", last_name: "peters", age: 25, email: "nicholas1@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Lola", last_name: "günther", age: 25, email: "nicholas2@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Mike", last_name: "stevens", age: 25, email: "nicholas3@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "John", last_name: "hans", age: 25, email: "nicholas4@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")
User.create(first_name: "Tim", last_name: "what", age: 25, email: "nicholas5@gmail.com", password: "123456", stay: "2 weeks", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

", typeofmusic: "rock")

Event.create!(location_name: "Kater", location_address: "berlin", time: Time.now, event_description:"very nice")
Event.create!(location_name: "bier", location_address: "bonn", time: Time.now, event_description:"not nice")
Event.create!(location_name: "haus", location_address: "miami", time: Time.now, event_description:"sick nice")
Event.create!(location_name: "gut", location_address: "muc", time: Time.now, event_description:"very ok")
Event.create!(location_name: "nice", location_address: "ham", time: Time.now, event_description:"hhöäh nice")


