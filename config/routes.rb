Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'user_types/index'
  # get 'user_types/show'
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  devise_for :users
  get "/posts/new", to: "posts#new", as: 'new_post'
  resources :posts, :user_type, :users, only: [:index, :show]
  get "pages/home"
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
