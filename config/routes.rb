# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :foods, except: [:update]
  get 'inventories/index'
  resources :recipes, only: [:index, :show, :destroy]
=======
  get 'foods/index'
  resources :inventories, only: [:index, :show]
  get 'recipes/index'
>>>>>>> 0153214 (Add `inventories#show` route)
  # Defines the root path route ("/")
  root "recipes#index"
end
