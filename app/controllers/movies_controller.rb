class MoviesController < ApplicationController
  def index
    array = Array.new
    movies = Movie.all
    movies.each do |movie|
      array << { id: movie.id, title: movie.title, year: movie.year, plot: movie.plot }
    end
    render json: array.as_json
  end

  def show
    movie = Movie.find_by(id: params["id"])
    render json: movie.as_json
  end
end
