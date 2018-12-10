class SessionsController < ApplicationController

  def new
    @voter = Voter.new
  end

  def create
    @voter = Voter.find_by_username(params[:voter][:username])
    if @voter && @voter.authenticate(params[:voter][:password])
      session[:voter_id] = @voter.id
      redirect_to voter_path(@voter)
    else
      redirect_to login_path
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end

end
