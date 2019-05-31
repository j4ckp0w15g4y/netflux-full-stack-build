class TiersController < ApplicationController
    def index
        @tiers = Tier.all 

        render json: @tiers, status: :ok
    end 

    def show 
        @tier = Tier.find(params[:id])
        
        render json: @tier, status: :ok
    end 

    def getUsers
        @tier = Tier.find(params[:tier_id])

        render json: @tier.users, status: :ok
    end 


end 