# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Game.create(address: "barra", date: Date.new(2023, 5, 6), time: Time.new(2023, 5, 6, 12, 0, 0), user: User.find(1))

require 'faker'

# Seed de User comentado para não roodar + de 1x
# Todas as senhas são 123123
GameParticipant.destroy_all
Game.destroy_all
User.destroy_all

100.times do
  Faker::Config.locale = 'pt-BR'
  User.create(email: Faker::Internet.email, password: "123123",
              name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone)
end


# Seed de User comentado para não roodar + de 1x
address = ["Rio de Janeiro, Rua Visconde de Piraja", "Rua da Passagem, Rio de janeiro", "Av das Americas, rio de janeiro", "Av atlantica, rio de janeiro", "Av Brasil, Rio de janeiro"]

5.times do
game = Game.create(address: address.sample, date: Date.new(2023, 5, 6), time: Time.new(2023, 5, 6, 12, 0, 0), user: User.all.sample)
10.times do
  GameParticipant.create(game: game, user: User.all.sample)
end
end

puts 'seed done'

# puts 'Game seed done'
