RailsBlog::Application.routes.draw do
  resources :posts, only:[:index, :new, :edit, :show]
  resources :tags

  resources :ta

  resources :users

  resources :posts

  resources :post_tags

  resources :tags

  resources :users

end
