class Event < ActiveRecord::Base
  belongs_to :calendar_feed

  default_scope where('at >= ?', Time.now).order('at')
end
