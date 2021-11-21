class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash.now[:primary] = 'Connected!'
      redirect_to user_path(user.id)
    else
      flash.now[:danger] = 'Log In Failled.!'
      render :new
    end
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'You are Loged Out!'
    redirect_to new_session_path
  end
end
