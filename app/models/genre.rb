class Genre < ApplicationRecord
  has_many :movie_genres
  has_many :moives, through: :movie_genres
end
