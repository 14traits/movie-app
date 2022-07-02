Rails.application.routes.draw do
  get "/find/:id", controller: "actors", action: "find_actor"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
