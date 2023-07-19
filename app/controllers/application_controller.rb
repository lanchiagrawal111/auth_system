class ApplicationController < ActionController::Base

  def authenticate_user
    return redirect_to sign_in_path, notice: 'Please login to access.' unless session[:user_id]
  end

  def set_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
