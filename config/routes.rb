RailsBlog::Application.routes.draw do

  resources :posts, only: [:new, :create, :show, :edit, :update, :index]

  resources :post_tags

  resources :tags

  resources :users

end
