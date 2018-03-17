RailsBlog::Application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :tags, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
