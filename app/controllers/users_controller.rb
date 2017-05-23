class UsersController < ApplicationController
  # before action to write for edit, update and dashboard



  def dashboard
    # redirect to dashboard
    @user = current_user
    @bookings = Booking.where(status: "pending", user: @user)
  end

  private

  def set_user
    # find the current user
  end

  def user_params
    # permitted params for updating user's account
  end
end
