Rails.application.routes.draw do
  ## Actors
  # GET "/actors" - Gets all the actors we have
  get "/actors" => "actors#index"

  # POST "/actors" - Creates a new actor, add it to our database
  post "/actors" => "actors#create"

  # GET "/actors/3" - Just get one specific actor (that already exists)
  get "/actors/:id" => "actors#show"

  # PATCH "/actors/3" - Updates a specific actor
  patch "/actors/:id" => "actors#update"

  # DELETE "/actors/3" - Deletes a specific actor
  delete "/actors/:id" => "actors#destroy"

  ## Movies
  # GET "/movies" - Gets all the movies we have
  get "/movies" => "movies#index"

  # POST "/movies" - Creates a new movie, add it to our database
  post "/movies" => "movies#create"

  # GET "/movies/3" - Just get one specific movie (that already exists)
  get "/movies/:id" => "movies#show"

  # PATCH "/movies/3" - Updates a specific movie
  patch "/movies/:id" => "movies#update"

  # DELETE "/movies/3" - Deletes a specific movie
  delete "/movies/:id" => "movies#destroy"
end
