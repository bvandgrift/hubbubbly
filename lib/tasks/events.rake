require 'rubygems'
require 'icalendar'
require 'open-uri'

namespace :events do
  desc "Load events from CAL=webaddress"
  task :import => :environment do
    calendar_file = ENV['CAL']
    raise "CAL= WHUT?" unless calendar_file
    puts "Calendar file:", calendar_file
    cfile = open(calendar_file)
    calendars = Icalendar.parse(cfile)
    calendars.each do |calendar|
      puts "Calendar: #{calendar.properties['x-wr_caldesc']}"
      calendar.events.each do |event|
        puts "Event: #{event.properties['summary']}"
        event_time = Time.parse(event.properties['dtstart'])
        puts "Time: #{event_time.strftime("%d/%m/%y, %I:%M %p %Z")}"
        puts "at #{event.properties['location']}"
      end 
    end
  end
end