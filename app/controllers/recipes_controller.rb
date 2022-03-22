# frozen_string_literal: true

# RecipesController
class RecipesController < ApplicationController
  def index
    @current_user = current_user
    if @current_user.nil?
      redirect_to user_session_path, flash: { alert: 'You must be signed in to continue.' }
    else
      @recipes = @current_user.recipes
    end
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
    @recipe = 'No recipes' if @recipe.nil?
    @current_user = current_user
  end

  def destroy
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.destroy
    flash.now[:success] = 'recipe deleted.'
    redirect_to recipes_index_path
  end
end
