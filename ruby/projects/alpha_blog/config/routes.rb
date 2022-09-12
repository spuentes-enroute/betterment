Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # root 'application#hello'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show]
end
