# frozen_string_literal: true

class Ptype < ApplicationRecord
  #self.inheritance_column = 'override'

  has_many :pokemon

  validates :ptype, presence: true
end
