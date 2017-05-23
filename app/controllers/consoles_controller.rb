class ConsolesController < ApplicationController
  # before action to write for show, edit, update, delete

  before_action :set_console, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: :index

  def index
   @brand = params[:brand]
   @consoles = Console.where(brand: @brand)
  end

  def show
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(console_params)
    @console.user = current_user
    if @console.save
      redirect_to consoles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @console.update(console_params)
    if @console.save
      redirect_to consoles_path
    else
      render :new
    end
  end

  def delete
    @console.destroy
    redirect_to consoles_path
  end

  private

  def set_console
    @console = Console.find(params[:id])
  end

  def console_params
    params.require(:console).permit(:brand, :shifter, :description, :price_per_day, :photo)
  end
end
