RailsBlog::Application.routes.draw do
  resources :posts

  resources :post_tags

  resources :posts_tags

  resources :tags

  resources :users

end
