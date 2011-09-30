class Manage::RelatedResourcesController < InheritedResources::Base

  before_filter :authenticate_user!, :require_admin
  defaults :route_prefix => 'manage'

end
