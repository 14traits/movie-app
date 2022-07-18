class Genre < ApplicationRecord
  has_many :movie_genre
  has_many :moives, through: :movie_genre
end
