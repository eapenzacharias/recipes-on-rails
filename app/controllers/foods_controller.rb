class FoodsController < ApplicationController
  load_and_authorize_resource

  def new
    @food = Food.new
  end

  def index
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
