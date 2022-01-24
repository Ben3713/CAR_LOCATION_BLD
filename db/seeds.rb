# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all

car1 = Car.create(name: 'Ferrari', description: 'sa marche fort', price: '150')
car2 = Car.create(name: 'Lamborghini', description: 'sa marche fort', price: '480')
car3 = Car.create(name: 'Porshe', description: 'sa marche fort', price: '350')
car4 = Car.create(name: 'BMW', description: 'sa marche fort', price: '250')

user1 = User.create(email: 'baba@gmail.com', username:'baba', password: 'azerty')


puts " db bien create"
