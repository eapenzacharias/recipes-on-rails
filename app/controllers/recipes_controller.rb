# frozen_string_literal: true

# RecipesController
class RecipesController < ApplicationController
  before_action :fetch_recipe, only: %i[show destroy toogle_public]

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
    if @recipe.user == current_user
      if @recipe.destroy
        flash[:success] = 'recipe deleted.'
      else
        flash[:fail] = 'recipe deletion unsucessful.'
      end
    end
    redirect_to recipes_path
  end

  def fetch_recipe
    @recipe = Recipe.find_by_id(params[:recipe_id])
  end

  def toogle_public
    @recipe = fetch_recipe
    @recipe.public = !@recipe.public
    text = 'private'
    text = 'public' if @recipe.public
    if @recipe.save
      flash[:success] = "#{@recipe.name} is now #{text}!"
    else
      flash[:fail] = @recipe.public
    end
    redirect_to recipe_path(@recipe.id)
  end

  def public_recipes
    @recipes = Recipe.where(public: true)
  end
end
