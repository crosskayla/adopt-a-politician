class SessionsController < ApplicationController

  def new
    @voter = Voter.new
  end

  def create
    if auth
      @voter = Voter.find_or_create_by(uid: auth[:uid]) do |v|
        v.username = auth['info']['email']
        v.image = auth['info']['image']
      end
      session[:voter_id] = @voter.id
      redirect_to voter_path(@voter)
    else
      @voter = Voter.find_by_username(params[:voter][:username])
      if @voter && @voter.authenticate(params[:voter][:password])
        session[:voter_id] = @voter.id
        redirect_to voter_path(@voter)
      else
        redirect_to login_path
      end
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end

  private

    def auth
      request.env['omniauth.auth']
    end

end
