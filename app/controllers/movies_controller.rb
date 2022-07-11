class MoviesController < ApplicationController
  def index
    array = Array.new
    movies = Movie.all
    movies.each do |movie|
      array << { id: movie.id, title: movie.title, year: movie.year, plot: movie.plot, director: movie.director, english: movie.english }
    end
    render json: array.as_json
  end

  def show
    movie = Movie.find_by(id: params["id"])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
    )
    if movie.save #happy path
      render json: movie.as_json
    else # sad path
      render json: { errors: movie.errors.full_messages },
             status: 418
    end
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    if movie.save #happy path
      render json: movie.as_json
    else # sad path
      render json: { errors: movie.errors.full_messages },
             status: 418
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: { message: "Record of Movie deleted successfully!" }
  end
end
