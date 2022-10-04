Rails.application.routes.default_url_options[:host] = "localhost:3000"

Rails.application.routes.draw do
  get 'boards/index'
  get 'board/new'
  root 'pages#home'
  get 'users/new'
  get 'users/index'

  devise_for :users

  resources :plans
  
  get 'users', to: 'users#index'
  get 'boards', to: 'boards#index'
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
