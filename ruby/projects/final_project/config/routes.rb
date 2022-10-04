Rails.application.routes.draw do
  root 'pages#home'
  get 'users/new'
  get 'users/index'

  get 'signup', to: 'users#new'

  devise_for :users
  resources :plans
end
