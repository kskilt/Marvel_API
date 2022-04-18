class SessionsController < ApplicationController
  def new; end

  # processing the signin
  def create
    user = User.find_by(name: params[:users][:name])
    if user.authenticate(params[:users][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  # logouts
  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
