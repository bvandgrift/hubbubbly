require 'open-uri'
class Calendar < ActiveRecord::Base

  validates :name, :presence => true
  validates  :url, :presence => true

  has_many :events, :dependent => :destroy
  
  def import
    updated = created = 0
    cal_string = open(url).read

    open(url) do |f|
      
      calendars = RiCal.parse(f)
      calendars.each do |cal|
    
        cal.events.each do |event|
          pending_event = extract_event_properties_rical(event)
          existing_event = events.find_by_uid(pending_event[:uid])
          if existing_event
            existing_event.update_attributes(pending_event)
            updated += 1
          else
            events.create(pending_event)
            created += 1
          end
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

  def extract_event_properties_rical(event)
    {
      :label => event.summary,
      :at => event.dtstart,
      :until => event.dtend,
      :description => event.description,
      :location => event.location,
      :last_modified => event.last_modified,
      :url => event.url.to_s,
      :uid => event.uid,
      :summary => event.summary
    }
  end    



end
