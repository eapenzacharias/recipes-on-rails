# frozen_string_literal: true

class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def index
    @user = current_user
    @foods = @user.foods
  end

  def show; end

  def create
    @user = current_user
    @food = Food.new(food_params)
    @food.user = @user
    respond_to do |format|
      if @food.save

        format.html { redirect_to foods_path, flash: { success: 'Food created successfully.' } }
        format.json { render :index, status: :created, location: @food }
      else
        format.html { render :new, flash: { danger: @food.errors.messages } }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
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
end
