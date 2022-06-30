Rails.application.routes.draw do
  get "/find/:id", controller: "actors", action: "find_actor"
end
