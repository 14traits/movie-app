class ActorsController < ApplicationController
  def index
    array = Array.new
    actors = Actor.all
    actors.each do |actor|
      array << { id: actor.id, first_id: actor.first_name, last_name: actor.last_name, known_for: actor.known_for, gender: actor.gender, age: actor.age }
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
      gender: params[:gender],
      age: params[:age],
    )
    if actor.save #happy path
      render json: actor.as_json
    else # sad path
      render json: { errors: actor.errors.full_messages },
             status: 418
    end
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    if actor.save #happy path
      render json: actor.as_json
    else # sad path
      render json: { errors: actor.errors.full_messages },
             status: 418
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Record of Actor deleted successfully!" }
  end
end
