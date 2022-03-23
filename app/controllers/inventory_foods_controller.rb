# frozen_string_literal: true

class InventoryFoodsController < ApplicationController
  def new
    @inventory = Inventory.find_by_id(params[:inventory_id])
  end

  def create; end

  def destroy; end
end
