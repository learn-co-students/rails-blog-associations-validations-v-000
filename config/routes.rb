RailsBlog::Application.routes.draw do

  resources :tags

  resources :users, :posts, :tags
end
