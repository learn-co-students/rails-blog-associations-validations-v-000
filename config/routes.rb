RailsBlog::Application.routes.draw do

  resources :post_tags, only:  [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :posts, only:  [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :users, only:  [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :tags, only:  [:index, :new, :show, :create, :edit, :update, :destroy]

end
