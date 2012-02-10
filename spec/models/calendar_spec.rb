require 'spec_helper'

describe Calendar do

  def calendar_file 
    File.join(ENGINE_RAILS_ROOT, 'spec/fixtures/test_calendar.ical')
  end

  let(:calendar) { Calendar.create!(:name => "test", :url => calendar_file) }

  # note: given the default scope, this test will cease to function in 2025
  it "creates events when importing, without repeats" do
    expect {
      calendar.import
      puts calendar.inspect
    }.to change{ calendar.events.count }.by(3)

    calendar.events.map{ |e| e.label}.should include("update")
    
  end
end
