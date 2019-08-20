class Squad < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :player_squads
  has_many :players, through: :player_squads
end
