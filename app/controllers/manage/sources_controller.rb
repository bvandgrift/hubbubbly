module Manage
  class SourcesController < InheritedResources::Base

    before_filter :authenticate_user!
    defaults :route_prefix => 'manage'

    def import
      @source = Source.find(params[:id])
      @source.import
      redirect_to manage_sources_url
    end

  end
end
