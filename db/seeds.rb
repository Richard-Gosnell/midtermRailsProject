# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all
Ptype.destroy_all

require 'net/http'
require 'open-uri'
require 'json'
require 'pp'

url_names = 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/pokedex.json'
url_types = 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/types.json'
name_list = open(url_names).read
type_list = open(url_types).read

pokemon_names = JSON.parse(name_list)
type_names = JSON.parse(type_list)

types_name = type_names.map { |type| type['english'] }
# Will extract name: DO NOT CHANGE LINE BELOW!
english_names = pokemon_names.map { |name| name['name']['english'] }
stats = pokemon_names.map { |_stats| stat['base'] }
associated_type = pokemon_names.map { |a_type| a_type['type'] }

# Working
types_name.each do |name|
  t = Ptype.create(
    ptype: name
  )
  puts t.errors.messages
end

english_names.each do |english_names|
  t = Ptype.find_by(ptype: associated_type[0])
  p = Pokemon.create(
    name: english_names,
    ptype: t
  )
  puts p.errors.messages
end

puts "Created #{Ptype.count} Types"
puts "Created #{Pokemon.count} Pokemon"
