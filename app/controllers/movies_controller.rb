class MoviesController < ApplicationController

    def index
        movies = Movie.all
        watchlists = Watchlist.all
        seen = Seen.all
        render json: { movie: movies, watchlist: watchlists, seen: seen }
    end 

    def destroy
        user = User.find(params['user'])
        watch = user.watchlists.find_by(movie_id: params['movie'])
        watch.destroy
        watchlist = user.watchlists
        render json: watchlist, include: [:movie]
    end 

    def update
        user = User.find(params['user'])
        seen = user.seens.find_by(movie_id: params['movie'])
        seen.destroy
        seens = user.seens
        render json: seens, include: [:movie]
    end 
end
