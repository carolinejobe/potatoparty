class GuestsController < ApplicationController
  before_action :require_login, only: :index
  def new
    @guest = Guest.new
  end

  def index
    @guests = Guest.all
  end
  
  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      flash[:notice] = "Can't wait to see you!"
      redirect_to contributions_path
    else
      flash[:alert] = "we're gonna need a name..."
      redirect_to :back
    end
  end
  
  private
  
    def guest_params
      params.require(:guest).permit(:name, :russet_potato, :sweet_potato, :message)
    end
end