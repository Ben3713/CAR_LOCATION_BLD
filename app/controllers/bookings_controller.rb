class BookingsController < ApplicationController
def new
  @booking = Booking.new
  @car = Car.find(params[:car_id])
end
def edit
  @car  = Car.find(params[:car_id])
  @booking = Booking.find(params[:id])
end
def update
  @car  = Car.find(params[:car_id])
  @booking = Booking.find(params[:id])
  @booking.update(booking_params)
  redirect_to car_booking_path(@car, @booking)
end
  def show
    @bookings = Booking.all
  end
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_booking_path(@car,@booking)
    else
      render :new
    end
  end
  def booking_params
    params.require(:booking).permit(:date)
  end
end




