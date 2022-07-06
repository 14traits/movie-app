class ActorsController < ApplicationController
  def index
    array = Array.new
    actors = Actor.all
    actors.each do |actor|
      array << { id: actor.id, first_name: actor.first_name, last_name: actor.last_name, known_for: actor.known_for }
    end
    render json: array.as_json
  end

  def find_actor
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def last_name_find
    actor = Actor.find_by(last_name: params["last_name"])
    render json: actor.as_json
  end

  def search
    actor = Actor.find_by(last_name: params["last_name"])
    render json: actor.as_json
  end
end
