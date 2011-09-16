require 'spec_helper'

# TODO: make sense of this.
describe "Manage::Calendars" do
  describe "GET /manage/calendars" do
    it "shows a sample test, and jack else" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get manage_calendars_path
      response.status.should == 302
    end
  end
end
