class Event < ActiveRecord::Base
  belongs_to :calendar_feed

  scope :upcoming, where('at >= ?', Time.now()).order('at').limit(10)
  default_scope where('at >= ?', Time.now).order('at')
end
