# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create!(first_name: "nicholas", last_name: "Utikal", age: 25, email: "nicholas@gmail.com", password: "123456")
User.create!(first_name: "Herman", last_name: "peters", age: 25, email: "nicholas1@gmail.com", password: "123456")
User.create!(first_name: "Lola", last_name: "günther", age: 25, email: "nicholas2@gmail.com", password: "123456")
User.create!(first_name: "Mike", last_name: "stevens", age: 25, email: "nicholas3@gmail.com", password: "123456")
User.create!(first_name: "John", last_name: "hans", age: 25, email: "nicholas4@gmail.com", password: "123456")
User.create!(first_name: "Tim", last_name: "what", age: 25, email: "nicholas5@gmail.com", password: "123456")
