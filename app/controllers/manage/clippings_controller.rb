module Manage
  class ClippingsController < InheritedResources::Base

    before_filter :authenticate_user!, :require_admin
    defaults :route_prefix => 'manage'
 
    def import
      @clipping = Clipping.find(params[:id])
      @clipping.import
      redirect_to manage_calendars_url
    end

    def clipping_url
      manage_clipping_url
    end

    def calendar_url(obj)
      manage_clipping_url(obj)
    end

  end
end
