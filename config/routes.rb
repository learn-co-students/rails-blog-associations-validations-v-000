RailsBlog::Application.routes.draw do

  resources :users
  resources :posts, only: [:new, :show, :create, :edit, :update]

end
