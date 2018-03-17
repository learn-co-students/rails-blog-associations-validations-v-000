RailsBlog::Application.routes.draw do

  get 'tags/index'

  get 'tags/create'

  get 'tags/new'

  get 'tags/destroy'

  get 'tags/show'

  resources :tags

  get 'users/index'

  get 'users/create'

  get 'users/new'

  get 'users/destroy'

  get 'users/show'

  resources :users

  get 'posts/index'

  get 'posts/create'

  get 'posts/new'

  get 'posts/destroy'

  get 'posts/show'

  resources :posts

end
