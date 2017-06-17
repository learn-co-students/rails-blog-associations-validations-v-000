RailsBlog::Application.routes.draw do
  resources :posts, only: [:show, :new, :create, :edit, :update]
end
