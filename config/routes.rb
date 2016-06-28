RailsBlog::Application.routes.draw do

  resources :posts, only: [:index, :create, :new, :show, :update, :destroy, :edit]

end
