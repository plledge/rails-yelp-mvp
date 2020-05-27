class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # check set_restaurant method
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # pegue a hash restaurant dentro de params e só permita os campos
    # name, address e rating (qualquer outro não passará)
    params.require(:restaurant).permit(:name, :address, :phone_number)
  end

end
