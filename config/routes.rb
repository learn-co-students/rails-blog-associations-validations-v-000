RailsBlog::Application.routes.draw do

  resources :tags
  resource :posts, only: [:new, :create, :edit, :update, :delete]
  get '/posts/:id', to: 'posts#show', as: 'post'
  #get '/posts', to: 'posts#index', as: 'posts'

  resources :users

end
