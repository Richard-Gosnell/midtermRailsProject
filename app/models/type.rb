# frozen_string_literal: true

class Type < ApplicationRecord
  has_many :pokemons

  validates :type, presence: true
end
