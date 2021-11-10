class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to current_user
    else
      render "/login"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  def new
  end
end
