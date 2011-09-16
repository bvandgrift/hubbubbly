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
        event = extract_event_properties(prop)
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
  def extract_event_properties(props)
    {
      :label => props['summary'],
      :at => props['dtstart'],
      :until => props['dtend'],
      :description => props['description'],
      :location => props['location'],
      :last_modified => props['last_modified'],
      :url => props['url'].to_s,
      :uid => props['uid'],
      :summary => props['summary']
    }
  end    

end
