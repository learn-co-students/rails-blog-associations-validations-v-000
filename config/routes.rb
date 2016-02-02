RailsBlog::Application.routes.draw do
	resources :posts, only: [:new, :show]

end
