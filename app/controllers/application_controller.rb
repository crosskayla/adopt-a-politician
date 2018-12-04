class ApplicationController < ActionController::Base

  helper_method :signed_in?, :current_user

  def signed_in?
    !!current_user
  end

  def current_user
    Voter.find_by_id(session[:voter_id]) if session[:voter_id]
  end

end
