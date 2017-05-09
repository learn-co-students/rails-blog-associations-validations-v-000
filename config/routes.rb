RailsBlog::Application.routes.draw do

  get 'tags/new'

  get 'tags/index'

  get 'tags/create'

  get 'tags/edit'

  get 'tags/update'

  get 'tags/destroy'

  get 'users/new'

  get 'users/index'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  resources :posts

end
