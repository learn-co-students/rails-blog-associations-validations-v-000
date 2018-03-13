RailsBlog::Application.routes.draw do

  resources :users
  resources :tags
  resources :posts
  # get "posts/new" => "posts#new"
end
