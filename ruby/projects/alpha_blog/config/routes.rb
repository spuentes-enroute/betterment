Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # root 'application#hello'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'logout', to: 'sessions#destroy'
  
  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
end
