class Admin::UsersController < ApplicationController
  
  before_filter :restrict_admin_access

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation)
  end

  def restrict_admin_access
    if !current_user
      redirect_to new_session_path
    elsif !current_user.Admin
      redirect_to movies_path
    end
  end

end
