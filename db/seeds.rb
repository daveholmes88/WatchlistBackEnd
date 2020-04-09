# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'open-uri'
require 'json'
require 'byebug'

url = 'https://api.themoviedb.org/3/discover/movie?api_key=a963019bd93c2b7e3438d96162edd0ce&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=2&year=2019'
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response_array = JSON.parse(response.body)
response_array['results'].map do |movie|
    Movie.create(title: movie['title'], plot: movie['overview'], poster: movie['backdrop_path'], release_date: movie['release_date'], vote_average: movie['vote_average'])
end 

dave = User.create(user_name: 'dave')

Watchlist.create(user_id: 1, movie_id: 1)
Seen.create(user_id: 1, movie_id: 2)