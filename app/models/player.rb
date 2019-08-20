require 'rest-client'
require 'json'
require 'pry'

class Player < ApplicationRecord
    has_many :player_squads
    has_many :squads, through: :player_squads

    
    def self.get_player(num)
        url = "https://api.football-data.org/v2/players/#{num.to_s}"
        response = RestClient.get(url, headers={:'X-Auth-Token' => '869dbc3d5ffd4c34838bc6bc50ff692f'})
        return JSON.parse(response.body)
    end

    
end
