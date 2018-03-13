RailsBlog::Application.routes.draw do
    resources :posts, :users, :tags, :post_tags
end
