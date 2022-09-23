Rails.application.routes.draw do
  get 'users/index'
  # get 'main/home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
