RailsBlog::Application.routes.draw do
  resources :posts, only:[:index, :new, :edit, :show]
  resources :tags

  resources :ta

  resources :users

end
