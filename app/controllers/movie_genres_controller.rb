class MovieGenresController < ApplicationController
  def create
    movie_genres = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    if movie_genres.save #happy path
      render json: movie_genres.as_json
    else # sad path
      render json: { errors: movie_genres.errors.full_messages },
             status: 418
    end
  end
end
