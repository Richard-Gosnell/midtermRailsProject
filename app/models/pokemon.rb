# frozen_string_literal: true

class Pokemon < ApplicationRecord
  belongs_to :type

  validates :name, presence: true
end
