RailsBlog::Application.routes.draw do

  get 'tag/new'

  get 'tag/create'

  get 'tag/update'

  get 'tag/edit'

  get 'tag/show'

  get 'user/new'

  get 'user/create'

  get 'user/show'

  resources :posts

end
