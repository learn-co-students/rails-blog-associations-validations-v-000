RailsBlog::Application.routes.draw do
    resources :posts, :post_tags, :users, :tags
end
