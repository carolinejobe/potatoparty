class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.all.order(:created_at).reverse
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      flash[:notice] = "Sounds great!"
      redirect_to contributions_path
    else
      flash[:alert] = "We're gonna need a little more info..."
      redirect_to :back
    end
  end
  
  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to :back, alert: "Post deleted."
  end
  
  private
  
    def contribution_params
      params.require(:contribution).permit(:food, :person)
    end
end