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
    # find console
    # find current booking
    # link updated booking to console
    # save updated booking
    # redirect to dashboard
    raise

    if @booking.save
      redirect_to dashboard_path
    else
      render "consoles/show"
    end

  end



  private

  # def set_booking

  # end

  def booking_params
    params.require(:booking).permit(:start_day, :duration )
  end
end
