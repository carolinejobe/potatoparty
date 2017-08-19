class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.all.order(:created_at).reverse
    @contribution = Contribution.new
  end

  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to :back, alert: "deleted."
  end
end