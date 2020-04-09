class SeensController < ApplicationController

    def index
        seen = Seen.all 
        render json: seen, include: [:movie, :user]
    end 
    
    def create 
        user = User.find(params['user'])
        Seen.create(user_id: params['user'], movie_id: params['movie'])
        seen = user.seens
        render json: seen
    end 
end
