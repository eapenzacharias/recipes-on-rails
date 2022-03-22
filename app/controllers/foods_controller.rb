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
    @food = Food.find(params[:id])
    @food.destroy
    flash.now[:success] = 'Food deleted successfully.'
    redirect_to foods_path
  end
end
