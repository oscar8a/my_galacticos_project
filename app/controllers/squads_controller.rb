class SquadsController < ApplicationController

    def new
        @squad = Squad.new
    end

    def create 
        @squad = Squad.create(squad_params)
    end

    def squad_params 
        params.require(:squad).permit(:user_id, :coach_id, :name, :location)
    end
end
