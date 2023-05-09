# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Game.create(neighborhood: "barra", date: Date.new(2023, 5, 6), time: Time.new(2023, 5, 6, 12, 0, 0), user: User.find(1))

require 'faker'

# Seed de User comentado para não roodar + de 1x
# Todas as senhas são 123123
# 5.times do
#   Faker::Config.locale = 'pt-BR'
#   User.create(email: Faker::Internet.email, password: "123123",
#               name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone)
# end
# puts 'User seed done'

# Seed de User comentado para não roodar + de 1x
# 5.times do
#   Game.create(neighborhood: Faker::Address.city, date: Date.new(2023, 5, 6), time: Time.new(2023, 5, 6, 12, 0, 0), user: User.find(rand(1..5)))
# end

# puts 'Game seed done'
