RailsBlog::Application.routes.draw do

  resources :tags, :users, :posts, only: [ :index, :new, :show, :create, :edit, :destroy]

end
