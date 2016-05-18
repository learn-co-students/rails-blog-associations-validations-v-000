RailsBlog::Application.routes.draw do

  resources :tags

  resources :users

  resources :posts

  root "posts#index"
end
