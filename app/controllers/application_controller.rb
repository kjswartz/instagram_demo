class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  def authenticate_admin_user!
    redirect_to root_path if !current_user.admin?
  end

  helper_method :current_user, :signed_in?

  def current_user
    @current_user ||= User.find_by(username: 'kyle')
  end

  def signed_in?
    return true if current_user.present?
  end
end
