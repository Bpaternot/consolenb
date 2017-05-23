class ConsolesController < ApplicationController
  # before action to write for show, edit, update, delete

  def index
    # find all consoles with params of search bar from homepage ? So it's not index anymore
  end

  def show
    # find one console still with params from the hompeage nah ?
    # show this console
  end

  def new
    # create empty coquille
  end

  def create
    # create coquille with console_params
    # save the new console
    # redirect on dashboard
  end

  def edit
    # find one console
  end

  def update
    # find one console
    # update datas
    # redirect to dashboard
  end

  def delete
    # find one console
    # delete the console
    # redirect to dashboard
  end

  private

  def set_console
    # find the current console
  end

  def console_params
    # permitted params
  end
end
