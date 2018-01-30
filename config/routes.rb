RailsBlog::Application.routes.draw do

  resources :tags, only: [:index, :show, :new, :create, :edit, :update]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
end
