require 'open-uri'
class Calendar < ActiveRecord::Base

  validates :name, :presence => true
  validates  :url, :presence => true

  has_many :events
  
  def import
    calendar_file = open(url)
    calendars = Icalendar.parse(calendar_file)
    updated = created = 0
    calendars.each do |calendar|
      
      logger.info "importing: #{calendar.properties['x-wr_caldesc']}"
      calendar.events.map(&:properties).each do |prop|
        event = {
          :label => prop['summary'],
          :at => prop['dtstart'],
          :until => prop['dtend'],
          :description => prop['description'],
          :location => prop['location'],
          :last_modified => prop['last_modified'],
          :url => prop['url'].to_s,
          :uid => prop['uid']
        }
        existing_event = events.find_by_uid(prop['uid'])
        if existing_event
          existing_event.update_attributes(event)
          updated += 1
        else
          events.create(event)
          created += 1
        end
      end 
    end
    logger.info "import result: created #{created} events, updated #{updated} events."
  end

private 
  def extract_event_properties(event_properties)
    event_properties.select { |k,v| Event.new.attributes.keys.include?(k) }
  end    

end
