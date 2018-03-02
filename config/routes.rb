RailsBlog::Application.routes.draw do
  resources :posts
  resources :tags
  resources :users
  resources :post_tags 
end
