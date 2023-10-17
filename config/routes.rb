# Rails.application.routes.draw do
#   root to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: 'users',
  path_names: { sign_in: 'sign_in', sign_out: 'sign_out', password: 'secret', registration: 'register', sign_up: 'sign_up' }

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    root to: 'groups#index'
  end
  
  resources :users
  resources :groups, only: [:index, :new, :create]
  resources :expenses, only: [:index, :new, :create]
end
