RailsBlog::Application.routes.draw do
  resources :nests
  resources :birds
  resources :users
  resources :tags
  resources :posts
end
