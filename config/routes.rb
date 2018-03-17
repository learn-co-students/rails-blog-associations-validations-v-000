RailsBlog::Application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'

  resources :users, only: [:index, :show, :new, :create, :edit]
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  resources :tags, only: [:index, :show, :new, :create, :edit]
  patch 'tags/:id', to: 'tags#update'
  delete 'tags/:id', to: 'tags#destroy'
end
