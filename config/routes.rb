# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :foods, except: [:update]
  resources :inventories, only: [:index, :show, :destroy, :new, :create]
  resources :recipes, only: [:index, :show, :destroy, :put ] do
    resources :recipe_foods, path: 'food', only: [:destroy, :new, :create]
  end
  # match 'recipes/:recipe_id/toogle_public' => 'recipes#toogle_public', as: :toogle_public, via: :put
  match 'recipes/:recipe_id' => 'recipes#toogle_public', as: :toogle_public, via: :patch
  match 'public_recipes' => 'recipes#public_recipes', as: :public_recipes, via: :get
  # Defines the root path route ("/")
  root 'recipes#public_recipes'
end
