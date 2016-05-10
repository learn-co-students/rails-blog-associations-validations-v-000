RailsBlog::Application.routes.draw do

  resources :tags, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
