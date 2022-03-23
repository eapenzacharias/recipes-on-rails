# frozen_string_literal: true

class InventoryFoodsController < ApplicationController
  def new
    @inventory = Inventory.find_by_id(params[:inventory_id])
  end

  def create; end

  def destroy
    @inventory_food = InventoryFood.find_by_id(params[:id])
    @inventory_food.destroy
    redirect_to inventory_path(params[:inventory_id])
  end
end
