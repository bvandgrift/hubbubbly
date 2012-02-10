require 'spec_helper'

describe "Manage::Calendars" do
  describe "GET /manage/calendars" do
    it "shows a sample test, and jack else" do
      get manage_calendars_path
      response.status.should == 200
    end
  end
end
