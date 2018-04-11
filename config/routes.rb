RailsBlog::Application.routes.draw do

  get 'tags/new'

  get 'tags/edit'

  get 'tags/index'

  get 'tags/show'

  get 'user/new'

  get 'user/edit'

  get 'user/index'

  get 'user/show'

  resources :users
  resources :posts
  resources :tags
end
