Rails.application.routes.draw do
  get 'pages/plans'
  root 'pages#home'
  get 'users/new'
  get 'users/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get 'signup', to: 'users#new'
end
