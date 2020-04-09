class WatchlistsController < ApplicationController

    def index
        watchlist = Watchlist.all 
        render json: watchlist, include: [:movie, :user]
    end 
    
    def create 
        user = User.find(params['user'])
        new_watchlist = Watchlist.create(user_id: params['user'], movie_id: params['movie'])
        watchlists = user.watchlists
        render json: watchlists
    end 

end
