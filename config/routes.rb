Rails.application.routes.draw do

  get "/" => "sessions#index"
  get "/sign-up" => "users#index"
  get "/home" => "home#index"
  # not using but required
  get "/users" => "users#index"

  post "/sign-in" => "sessions#create"
  post "/users" => "users#create"

end
