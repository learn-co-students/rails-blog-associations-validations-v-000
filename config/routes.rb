RailsBlog::Application.routes.draw do

  resources :users
  resources :tags
  resources :posts
  resources :post_tags
end
