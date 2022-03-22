# frozen_string_literal: true

# RecipesController
class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = @current_user.recipes
  end
end
