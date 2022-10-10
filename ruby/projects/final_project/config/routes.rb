# frozen_string_literal: true

Rails.application.routes.default_url_options[:host] = 'localhost:3000'

Rails.application.routes.draw do
  root 'pages#home'
  get 'users', to: 'users#index'
  get 'boards', to: 'boards#index'

  devise_for :users
  resources :plans

  resources :boards do
    resources :task_lists do
      resources :tasks
    end
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
