module Manage
  class CalendarsController < InheritedResources::Base

    defaults :route_prefix => 'manage'
 
    def import
      @calendar = Calendar.find(params[:id])
      @calendar.import
      redirect_to manage_calendars_url
    end

    def calendars_url
      manage_calendars_url
    end

    def calendar_url(obj)
      manage_calendar_url(obj)
    end

  end
end
