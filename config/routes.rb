RailsBlog::Application.routes.draw do

  resources :post_tags

  resources :posts

  resources :tags

  resources :users

end
