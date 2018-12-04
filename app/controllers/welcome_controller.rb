class WelcomeController < ApplicationController

  def greet #TODO render greet unless logged in
    redirect_to voter_path(current_user) if signed_in?
  end

end
