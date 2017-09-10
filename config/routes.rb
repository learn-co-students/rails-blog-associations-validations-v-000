RailsBlog::Application.routes.draw do

  resources :posts, only: [:index, :new, :show, :edit]

  resources :post_tags

  resources :tags

  resources :users

end
