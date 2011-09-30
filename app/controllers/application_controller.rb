class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
    
private

  def require_admin
    unless current_user && current_user.admin?
      redirect_to root_url
    end
  end

end
