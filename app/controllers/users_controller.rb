class UsersController < ApplicationController
  # before action to write for edit, update and dashboard
  before_action :clean_booking_status



  def dashboard
    # redirect to dashboard
    @user = current_user
    @bookings_pending = Booking.where(status: "pending", user: @user)
    @bookings_approved = Booking.where(status: "approved", user: @user)
    @bookings_declined = Booking.where(status: "declined", user: @user)
    @bookings_past = Booking.where(status: "past", user: @user)
    @bookings_pending_owner = []
    @bookings_approved_owner = []
    @bookings_declined_owner = []
    @bookings_past_owner = []
    @bookings = Booking.all
    @bookings.each do |booking|
      if booking.console.user == current_user && booking.status == "pending"
        @bookings_pending_owner << booking
      elsif booking.console.user == current_user && booking.status == "approved"
        @bookings_approved_owner << booking
      elsif booking.console.user == current_user && booking.status == "declined"
        @bookings_declined_owner << booking
      elsif booking.console.user == current_user && booking.status == "past"
        @bookings_past_owner << booking
      end
    end
  end

  private

  def clean_booking_status
    Booking.where(status: "approved", user: @user).each do |booking|
    if booking.start_day + booking.duration < Date.today
      booking.status = "past"
      booking.save
    end
    end
  end

  def set_user
    # find the current user
  end

  def user_params
    # permitted params for updating user's account
  end
end
