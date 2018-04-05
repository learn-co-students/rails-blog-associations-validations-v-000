
RailsBlog::Application.routes.draw do
  resources :posts
  resources :post_tags
  resources :users
  resources :tags
end
