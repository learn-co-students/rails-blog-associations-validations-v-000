RailsBlog::Application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  resources :users, only: [:index, :show, :new, :create, :edit]
  resources :tags, only: [:index, :show, :new, :create, :edit]
  patch 'posts/:id' => 'posts#update', :as => 'posts/update'

end
