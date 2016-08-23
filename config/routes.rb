RailsBlog::Application.routes.draw do

  resources :posts, only: [:new, :create, :show]

  resources :post_tags

  resources :tags

  resources :users

end
