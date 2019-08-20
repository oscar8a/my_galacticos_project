class Squad < ApplicationRecord
  belongs_to :user
  has_many :reviews
  belongs_to :player_squads
  has_many :players, through: :player_squads
end
