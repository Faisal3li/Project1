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

  # devise_scope :users do
  #   root "devise/sessions#new", to: 
  # end
  get "/posts/new", to: "posts#new", as: "new_post"
  resources :posts, :user_type, :users, :post_tags
  get "pages/home"
  devise_scope :user do
    root "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
