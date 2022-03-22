<<<<<<< HEAD
# frozen_string_literal: true

# Food controller
class FoodsController < ApplicationController
<<<<<<< HEAD
  def new
    @food = Food.new
  end

  def index
    @user = current_user
    if @user.nil?
      redirect_to user_session_path, flash: { alert: 'You must be signed in to continue.' }
    else
      @foods = @user.foods
    end
  end

  def show; end

  def create
    @user = current_user
    @food = Food.new(food_params)
    @food.user = @user
    if @food.save
      redirect_to foods_path, flash: { success: 'Food created successfully.' }
    else
      render :new, flash: { danger: @food.errors.messages }
    end
  end

  def edit; end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash.now[:success] = 'Food deleted successfully.'
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
=======
  def index; end
=======
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
>>>>>>> 8f24d78 (Create food routes)
>>>>>>> b0652e0 (Create food routes)
end
