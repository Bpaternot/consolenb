class UsersController < ApplicationController
  # before action to write for edit, update and dashboard



  def dashboard
    # redirect to dashboard
    @user = current_user
    @bookings_pending = Booking.where(status: "pending", user: @user)
    @bookings_approved = Booking.where(status: "approved", user: @user)
    @bookings_declined = Booking.where(status: "declined", user: @user)
    @bookings_past = Booking.where(status: "past", user: @user)

  end

  private

  def set_user
    # find the current user
  end

  def user_params
    # permitted params for updating user's account
  end
end
