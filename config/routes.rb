# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :foods, except: [:update]
  resources :inventories, only: [:index, :show, :destroy, :new, :create] do
    get 'foods/new', to: 'inventory_foods#new'
    post 'foods', to: 'inventory_foods#create'
    delete 'foods/:id', to: 'inventory_foods#destroy'
  end
  resources :recipes, only: [:index, :show, :destroy]
  
  # Defines the root path route ("/")
  root "recipes#index"
end
