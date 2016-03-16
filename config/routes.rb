RailsBlog::Application.routes.draw do
resources :posts, only: [:new, :create, :show, :edit, :destroy]

end
