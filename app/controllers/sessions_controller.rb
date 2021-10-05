class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to "/login"
      else
        render 'new'
      end

      def destroy
        log_out if logged_in?
        redirect_to "/new"
      end
    end