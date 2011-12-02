class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
    
private

  def require_admin
    unless current_user && current_user.admin?
      # TODO: raise exception?
      head :status => 404
    end
  end

end
