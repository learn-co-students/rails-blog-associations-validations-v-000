RailsBlog::Application.routes.draw do
  resources :posts, only: [:index, :show, :edit, :update, :destroy]

  #get 'user/name:string'

  #get 'tag/name:string'
end
