RailsBlog::Application.routes.draw do

  resources :post_tags

  resources :tags

  resources :users
  
  resources :posts, only: [:new, :edit, :show, :create, :update, :edit]

end
