class PoliticiansController < ApplicationController
  before_action :can_access?

  def index
    @politicians = Politician.all.order(:name)
  end

  def show
    @politician = Politician.find_by_id(params[:id])
    @donations = @politician.donations
  end

  def update
    @politician = Politican.update(politician_params)
  end

  private

    def politician_params
      params.require(:politician).permit(
        :name,
        :party
      )
    end

end
