Rails.application.routes.draw do
  resources :actors, :movies, defaults: { format: :json }

  # Post
  post "/users" => "users#create"
end
