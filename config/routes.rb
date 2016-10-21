Rails.application.routes.draw do

  get "/" => "sessions#index"
  get "/sign-up" => "users#index"
  get "/home" => "home#index"

  post "/sign-in" => "sessions#create"

end
