class ActorsController < ApplicationController
  def index
    array = Array.new
    actors = Actor.all
    actors.each do |actor|
      array << { id: actor.id, first_id: actor.first_name, last_name: actor.last_name, known_for: actor.known_for }
    end
    render json: array.as_json
  end

  def show
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
    )
    actor.save
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Record of Actor deleted successfully!" }
  end
end
