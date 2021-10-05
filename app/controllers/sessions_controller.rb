class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to currentuser
    else
      render "/login"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to "/logout"
  end
  
  def new
  end
end
