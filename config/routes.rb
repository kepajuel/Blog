Rails.application.routes.draw do

  # /posts/1/comments/4
  resources :posts do
    resources :comments 
  end

  

  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
