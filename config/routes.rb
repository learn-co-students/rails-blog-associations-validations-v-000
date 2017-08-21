RailsBlog::Application.routes.draw do
    resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    
end
