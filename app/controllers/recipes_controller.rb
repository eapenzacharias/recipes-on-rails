# frozen_string_literal: true

# RecipesController
class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = @current_user.recipes
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
    if @recipe == nil
      @recipe = 'No recipes'
    end
    @current_user = current_user
  end
end
