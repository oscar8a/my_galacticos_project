class PlayerSquad < ApplicationRecord
  belongs_to :player
  belongs_to :squad
end
