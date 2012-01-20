class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
    
  def user_signed_in?
    !!current_user
  end
  helper_method :user_signed_in?

  def require_admin
    unless current_user && current_user.admin?
      # TODO: raise exception?
      head :status => 404
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
