class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def index
    @user = current_user
    @foods = @user.foods
  end

  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
