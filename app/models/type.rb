# frozen_string_literal: true

class Type < ApplicationRecord
  self.inheritance_column = 'override'

  has_many :pokemons

  validates :type, presence: true
end
