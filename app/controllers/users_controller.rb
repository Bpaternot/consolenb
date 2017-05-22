class UsersController < ApplicationController
  # before action to write for edit, update and dashboard

  def edit
    # goes on show of edit
  end

  def update
    # update datas with check of params
    # redirect to dashboard
  end

  def dashboard
    # redirect to dashboard
  end

  private

  def set_user
    # find the current user
  end

  def user_params
    # permitted params for updating user's account
  end
end
