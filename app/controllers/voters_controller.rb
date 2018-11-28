class VotersController < ApplicationController
  #before_action :private_method, only: [:show, :edit, :update, :destroy]

  def index
    @voters = Voter.all
  end

  def show
    @voter = Voter.find_by_id(params[:id])
  end

  def new
    @voter = Voter.new
  end

  def create
    @voter = Voter.new(voter_params)
    if @voter.save
      session[:voter_id] = @voter.id
      redirect_to voter_path(@voter)
    else #prompt user to correct errors
      render :new
    end
  end

  private

    def voter_params
      params.require(:voter).permit(:username, :password, :party, :age, :dollars, :admin)
    end

end
