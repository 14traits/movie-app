Rails.application.routes.draw do
  # Actors
  # Get
  get "/actors" => "actors#index"
  get "/find/:id", controller: "actors", action: "find_actor"
  get "/actors/:last_name" => "actors#last_name_find"
  # Post
  post "/find/actor/" => "actors#search"

  # Movies
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
