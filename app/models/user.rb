class User < ApplicationRecord
    has_many :seens
    has_many :watchlists
    has_many :movies, through: :watchlists
    has_many :movies, through: :seens
end
