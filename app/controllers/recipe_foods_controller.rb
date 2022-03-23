class RecipeFoodsController < ApplicationController
  def destroy
    @recipe_food = RecipeFood.find_by_id(params[:id])
    @recipe_food.destroy
    redirect_to recipe_path(params[:recipe_id]), methpod: :get
  end
end
