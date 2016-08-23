RailsBlog::Application.routes.draw do

  resources :posts_tags

  resources :post_tags

  resources :tags

  resources :users

end
