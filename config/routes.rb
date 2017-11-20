RailsBlog::Application.routes.draw do
  resources :posts
  #get 'user/name:string'

  #get 'tag/name:string'
  resources :tag, only: [:new]
end
