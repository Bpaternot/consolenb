class BookingsController < ApplicationController

  def create
    # create coquille according to booking_params and current_user
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @console = Console.find(params[:console_id])
    @booking.console = @console
    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render "consoles/show"
    end
  end

  def edit
  end

  def update
    raise
    @booking = Booking.find(params[:id])
    @booking.status = "approved"

    if @booking.update(booking_params)
      redirect_to dashboard_path
    end

  end



  private

  # def set_booking

  # end

  def booking_params
    params.require(:booking).permit(:start_day, :duration, :status )
  end
end
