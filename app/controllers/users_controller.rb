class UsersController < ApplicationController

    def create
        user = User.find_or_create_by(user_name: params['user'])
        movies = user.movies
        payload = { user_id: user.id}
        token = JWT.encode(payload, 'secret', 'HS256')
        render json: {user: user, watchlist: movies}
    end 

    def show
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode token, 'secret', true, { algorithm: 'HS256' }
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)
        render json: { user: user, token: token }
    end 
    
end
