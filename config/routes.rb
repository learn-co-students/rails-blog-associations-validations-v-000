RailsBlog::Application.routes.draw do
  resources :post_tags
  resources :post
  resources :tags
  resources :users
end
