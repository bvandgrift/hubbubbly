class Manage::RelatedResourcesController < InheritedResources::Base

  before_filter :authenticate_user!
  defaults :route_prefix => 'manage'

end
