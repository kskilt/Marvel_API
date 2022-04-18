class ApplicationController < ActionController::Base

  def authorize
    redirect_to new_session_path unless logged_in?
  end

  def logged_in?
    session[:user_id]
  end
end
