# frozen_string_literal: true

# InventoriesController
class InventoriesController < ApplicationController
  def index
    @user = current_user
    @inventories = @user.inventories unless @user.nil?
  end

  def show; end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to inventories_path
  end
end
