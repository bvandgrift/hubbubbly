require 'spec_helper'

describe Calendar do

  def calendar_file 
    File.join(Rails.root, 'spec/fixtures/test_calendar.ical')
  end

  let(:calendar) { Calendar.create!(:name => "test", :url => calendar_file) }

  # note: given the default scope, this test will cease to function in 2025
  it "creates events when importing, without repeats" do
    expect {
      calendar.import
      puts "There are (#{calendar.events.count}) events in the calendar"
      puts calendar.events.inspect
    }.to change { calendar.events.count }.by(3)

    calendar.events.count.should == 3
    calendar.events.last.label.should match(/update/)
    
  end
end
