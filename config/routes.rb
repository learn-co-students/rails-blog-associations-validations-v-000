RailsBlog::Application.routes.draw do
  resources :tags, only: [:index, :new, :create, :show, :edit, :update]
  patch  '/tags/:id' , to: 'tags#update'

  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  patch  '/users/:id' , to: 'users#update'

  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
  patch  '/posts/:id' , to: 'posts#update'
end
