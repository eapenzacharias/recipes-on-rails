# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'foods/index'
  get 'inventories/index'
  get 'recipes/index'
  resources :recipes, only: [:index, :show, :destroy]
  # Defines the root path route ("/")
  root "recipes#index"
end
