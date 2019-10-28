class Stat < ApplicationRecord
  validates :hp,
            :attack,
            :defense,
            :sp_attack,
            :sp_defence,
            :speed,
            presence: true
end
