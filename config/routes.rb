RailsBlog::Application.routes.draw do

  resources :post_tags, :tags, :users, :posts

end
