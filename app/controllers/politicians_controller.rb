class PoliticiansController < ApplicationController
  before_action :can_access?

  def index
    @politicians = Politician.all
  end

  def show
    @politician = Politician.find_by_id(params[:id])
  end

  private

    def can_access?
      redirect_to '/' unless signed_in?
    end

end
