class ConsolesController < ApplicationController
  # before action to write for show, edit, update, delete

  before_action :set_console, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: :index

  def index
   @brand = params[:brand]
   # @consoles = Console.where(brand: @brand)

    @consoles = Console.where(brand: @brand).where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@consoles) do |console, marker|
      marker.lat console.latitude
      marker.lng console.longitude
      marker.json({id: console.id})
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
    @booking = Booking.new()
  end

  def show
    @booking = Booking.new()
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(console_params)
    @console.user = current_user
    if @console.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @console.update(console_params)
    if @console.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @console.destroy
    redirect_to dashboard_path
  end

  private

  def set_console
    @console = Console.find(params[:id])
  end

  def console_params
    params.require(:console).permit(:brand, :shifter, :description, :price_per_day, :photo, :address, :latitude, :longitude)
  end
end
