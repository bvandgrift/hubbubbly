require 'rubygems'
require 'icalendar'
require 'open-uri'
require 'pp'

namespace :events do
  desc "Load events from CAL=webaddress"
  task :import => :environment do
    Calendar.all.each do |feed|
      cfile = open(feed.url)
      calendars = Icalendar.parse(cfile)
      calendars.each do |calendar|
        puts "Calendar: #{calendar.properties['x-wr_caldesc']}"
        calendar.events.map(&:properties).each do |prop|
          puts "Prop.class = #{prop.class}"
          pp prop
        end 
      end
    end
  end
end
