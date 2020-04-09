class Movie < ApplicationRecord
    has_many :seens
    has_many :watchlists
    has_many :users, through: :watchlists
    has_many :users, through: :seens
end
