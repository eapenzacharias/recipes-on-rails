# frozen_string_literal: true

# RecipeFoodsController
class RecipeFoodsController < ApplicationController
  def destroy
    @recipe_food = RecipeFood.find_by_id(params[:id])
    if @recipe_food.destroy
      flash[:success] = 'Ingedient deleted.'
    else
      flash[:fail] = 'Ingedient deletion unsucessful.'
    end
    redirect_to recipe_path(params[:recipe_id]), methpod: :get
  end
end
