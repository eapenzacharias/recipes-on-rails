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
    @recipe_foods = @recipe&.recipe_foods
    @recipe = 'No recipes' if @recipe.nil?
    @current_user = current_user
  end

  def destroy
    @recipe = Recipe.find_by_id(params[:id])
    if @recipe.destroy
      flash[:success] = 'recipe deleted.'
    else
      flash[:fail] = 'recipe deletion unsucessful.'
    end
    redirect_to recipes_path
  end

  def toogle_public
    @recipe = Recipe.find_by_id(params[:recipe_id])
    flash[:success] = if @recipe.update(public: !@recipe.public)
                        "#{@recipe.name} updated"
                      else
                        "#{@recipe.errors.full_messages} Public: #{@recipe.public}"
                      end
    redirect_to recipe_path(@recipe.id)
  end

  def public_recipes
    @recipes = Recipe.where(public: true)
  end
end
