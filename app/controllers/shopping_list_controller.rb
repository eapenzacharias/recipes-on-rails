class ShoppingListController < ApplicationController
  def index
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @inventory = Inventory.find_by_id(params[:inventory_id])
    @shopping_list = []
  end
end
