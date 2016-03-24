RailsBlog::Application.routes.draw do




resources :posts, only: [:show, :new, :edit, :create]
resources :tags, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
