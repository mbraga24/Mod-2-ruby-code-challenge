class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @ordered_episodes = @guest.episodes.order("rating DESC")
  end
end
