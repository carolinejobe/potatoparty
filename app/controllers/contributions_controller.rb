class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.all
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      flash[:notice] = "Can't wait to see you!"
      redirect_to contributions_path
    else
      flash[:alert] = "we're gonna need a name..."
      redirect_to :back
    end
  end
  
  private
  
    def contribution_params
      params.require(:contribution).permit(:food, :person)
    end
end