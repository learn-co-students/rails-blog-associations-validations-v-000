RailsBlog::Application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/index'

  get 'users/show'

  get 'tags/new'

  get 'tags/create'

  get 'tags/edit'

  get 'tags/update'

  get 'tags/destroy'

  get 'tags/index'

  get 'tags/show'

  resources :posts

  resources :tags

  resources :users

end
