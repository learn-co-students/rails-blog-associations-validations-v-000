RailsBlog::Application.routes.draw do
  resources :posts, only: [:new, :index, :destroy, :show, :edit, :update, :create]
  resources :tag, only: [:new, :index, :destroy, :show, :edit, :update, :create]
  resources :users, only: [:new, :index, :destroy, :show, :edit, :update, :create]


end
