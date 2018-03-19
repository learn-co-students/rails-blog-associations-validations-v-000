RailsBlog::Application.routes.draw do

  resources :tags, :posts
  resources :users
end
