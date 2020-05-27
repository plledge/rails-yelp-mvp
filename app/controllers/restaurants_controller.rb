class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # check set_restaurant method
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant added!'
    else
      render :new
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # pegue a hash restaurant dentro de params e só permita os campos abaixo
    # (qualquer outro não passará)
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
