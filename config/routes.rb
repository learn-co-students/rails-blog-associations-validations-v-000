RailsBlog::Application.routes.draw do
    resources :posts, only: [:index, :new, :edit, :show, :update, :destroy, :create]

end
