Blog::Application.routes.draw do
  devise_for :users
  resources :categories
  resources :posts

  root 'posts#index'
end
