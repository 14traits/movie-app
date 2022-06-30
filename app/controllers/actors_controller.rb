class ActorsController < ApplicationController
  def find_actor
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end
end
