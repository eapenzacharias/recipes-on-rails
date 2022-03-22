# frozen_string_literal: true

# InventoriesController
class InventoriesController < ApplicationController
  def index
    @user = current_user
    @inventories = @user.inventories unless @user.nil?
  end
end
