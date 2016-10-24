Rails.application.routes.draw do

  get "/" => "sessions#index"
  get "/sign-up" => "users#index"
  get "/home" => "home#index"
  get "/sign-out" => "sessions#destroy"
  get "/my-account" => "users#account"
  get "/edit-account" => "users#edit"
  get "/posts/:id" => "posts#show", as: "post"

  # not using but required
  get "/users" => "users#index"
  get "/comments" => "comments#index"

  post "/sign-in" => "sessions#create"
  post "/users" => "users#create"
  post "/update-account" => "users#update"
  post "/delete-account" => "users#destroy"
  post "/posts" => "posts#create"
  post "/delete" => "posts#delete"
  post "/comments" =>"comments#create"

end
