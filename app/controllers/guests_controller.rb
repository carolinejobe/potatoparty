class GuestsController < ApplicationController
  before_action :require_login, only: :index
  def new
    @guest = Guest.new
    @guest.build_contribution
  end

  def index
    @guests = Guest.all
  end
  
  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      @guest.contribution.destroy if @guest.contribution.food.blank?
      redirect_to contributions_path, notice: "We can't wait to see you!"
    else
      flash[:alert] = "we're gonna need a name..."
      redirect_back(fallback_location: new_guest_path)
    end
  end
  
  private
  
    def guest_params
      params.require(:guest).permit(:name, :russet_potato, :sweet_potato, :message, contribution_attributes: [:food])
    end
end