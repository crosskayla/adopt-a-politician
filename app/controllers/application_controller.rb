class ApplicationController < ActionController::Base

  helper_method :signed_in?, :current_user

  def signed_in?
    false
  end

  def current_user
    false
  end

end
