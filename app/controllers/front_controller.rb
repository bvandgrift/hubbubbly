class FrontController < ApplicationController

  def index
    @resources = RelatedResource.all || []
    @events = Event.upcoming || []
    @clippings = Clipping.all || []
  end

end
