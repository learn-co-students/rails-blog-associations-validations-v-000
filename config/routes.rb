RailsBlog::Application.routes.draw do

  resources :post_tags

  resources :posts

  resources :users

  resources :tags

end
