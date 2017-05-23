class ConsolesController < ApplicationController
  # before action to write for show, edit, update, delete

  before_action :set_console, only: [ :show, :edit, :update, :destroy ]

  def index
   @consoles = Console.all
  end

  def show
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.create(console_params)
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
    params.require(:consoles).permit(:brand, :shifter, :description)
  end
end
