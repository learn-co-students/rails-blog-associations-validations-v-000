RailsBlog::Application.routes.draw do
  resources :posts

  resources :post_tags

  resources :tags

  resources :users

  resources :post_tags

  resources :tags

  resources :users

end
