class DonationsController < ApplicationController
  before_action :can_access?

  def index
    if nested_query?
      @donations = @politician.donations
    else
      @donations = Donation.all
    end
  end

  def show
    @donation = Donation.find_by_id(params[:id])
  end

  def new
    @donation = Donation.new
    if nested_query?
      @donation.politician = @politician
    end
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

    def nested_query?
      if params[:politician_id] && Politician.find_by_id(params[:politician_id])
        @politician = Politician.find_by_id(params[:politician_id])
      end
    end
end
