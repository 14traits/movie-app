class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  # validates :title, presence: true, length:
  # validates :director, presence: true, length: { minimum: 2 }
  # validates :plot, presence: true
  # # now to make sure its after the first movie ever filmed:
  # # 1888. In Leeds, England Louis Le Prince films Roundhay Garden Scene, believed to be the first motion picture recorded.  https://en.wikipedia.org/wiki/List_of_cinematic_firsts
  # validates :year, presence: true, comparison: { greater_than_or_equal_to: 1888 }

  def genre_names
    return self.genres.map { |genre| genre.name }
  end
end
