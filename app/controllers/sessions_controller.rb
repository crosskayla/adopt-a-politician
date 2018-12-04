class SessionsController < ApplicationController

  def new
    @voter = Voter.new
  end

  def create #TODO -> the login form isn't submitting here
    @voter = Voter.find_by_username(params[voter[:username]])
    if @voter && @voter.authenticate(params[voter[:password]])
      session[:voter_id] = @voter.id
      redirect_to voter_path(@voter)
    else
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end

end
