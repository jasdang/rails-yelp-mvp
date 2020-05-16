class RestaurantsController < ApplicationController
  # before_action :get_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def get_restaurant
  end
end
