class Admin::Base < ApplicationController
  layout 'admin'
  before_filter :restrict_admin_access

private
  def restrict_admin_access
    if !current_user
      redirect_to new_session_path
    elsif !current_user.is_admin?
      flash[:notice] = "You're not admin!"
      redirect_to root_path
    end
  end
end