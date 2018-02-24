RailsBlog::Application.routes.draw do

  resources :user_tags
  resources :tags
  resources :users
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
