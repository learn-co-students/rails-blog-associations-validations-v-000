RailsBlog::Application.routes.draw do

  resources :tags
  resources :users
  resources :posts
  resources :post_tags

end
