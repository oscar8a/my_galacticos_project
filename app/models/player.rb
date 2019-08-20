class Player < ApplicationRecord
    belongs_to :player_squads
    has_many :squads, through: :player_squads

    
end
