# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all

require 'net/http'
require 'json'
require 'pp'

url = 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/pokedex.json'
responce = Net::HTTP.get(url)
request.content_type = 'application/json'

pokemon_names = JSON.parse(responce)
english_names = pokemon_names.map { |name| name['name']['english'] }

pokemon_names.each do
  pokemon.name.create(
    name: english_names
  )
end

puts "Created #{Pokemon.count} Pokemon"
