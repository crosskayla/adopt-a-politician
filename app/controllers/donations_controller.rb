class DonationsController < ApplicationController
  before_action :can_access?

  def show
    @donation = Donation.find_by_id(params[:id])
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.valid? && @donation.make_donation
      @donation.save
      @donation.politician.save
      @donation.voter.save
      redirect_to donation_path(@donation)
    else
      render :new
    end
  end

  def index
  end

  private

    def donation_params
      params.require(:donation).permit(
        :dollars,
        :description,
        :url,
        :politician_id,
        :voter_id)
    end
end
