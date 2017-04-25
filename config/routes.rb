RailsBlog::Application.routes.draw do
  resources :posts
  resources :tags, :users, only: [:new, :create, :show]
end
