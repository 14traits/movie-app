Rails.application.routes.draw do
  resources :actors, :movies, defaults: { format: :json }

  # User Create and User Session Establishment
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/movie_genres" => "movie_genres#create"
end
