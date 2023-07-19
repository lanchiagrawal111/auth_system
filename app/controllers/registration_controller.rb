class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      # stores saved user id in a session
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'User is successfully created.'
    else
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end