require 'rubygems'
require 'icalendar'
require 'open-uri'
require 'date'
require 'pp'


namespace :events do
  desc "Load events from calendars"
  task :import => :environment do
    Calendar.all.each { |c| c.update }
  end
end
