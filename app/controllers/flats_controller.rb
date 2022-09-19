class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :price, :overview, :number_of_guests)
  end
end

# def edit
#   @car = Car.find(params[:id])
# end

# def update
#   @car = Car.find(params[:id])
#   @car.update(car_params)
#   redirect_to car_path(@car)
# end

# def destroy
#   @car = Car.find(params[:id])
#   @car.destroy
#   redirect_to cars_path, status: :see_other
# end
