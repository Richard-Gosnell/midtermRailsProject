# frozen_string_literal: true

class Pokemon < ApplicationRecord
  belongs_to :ptype

  validates :name, presence: true
end
