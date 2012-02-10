require "spec_helper"

describe Manage::CalendarsController do
  describe "routing" do

    it "routes to #index" do
      get("/hub/manage/calendars").should route_to("manage/calendars#index", :path_prefix => '/hub/')
    end

    it "routes to #new" do
      get("/hub/manage/calendars/new").should route_to("manage/calendars#new", :path_prefix => '/hub/')
    end

    it "routes to #show" do
      get("/hub/manage/calendars/1").should route_to("manage/calendars#show", :id => "1", :path_prefix => '/hub/')
    end

    it "routes to #edit" do
      get("/hub/manage/calendars/1/edit").should route_to("manage/calendars#edit", :id => "1", :path_prefix => '/hub/')
    end

    it "routes to #create" do
      post("/hub/manage/calendars").should route_to("manage/calendars#create", :path_prefix => '/hub/')
    end

    it "routes to #update" do
      put("/hub/manage/calendars/1").should route_to("manage/calendars#update", :id => "1", :path_prefix => '/hub/')
    end

    it "routes to #destroy" do
      delete("/hub/manage/calendars/1").should route_to("manage/calendars#destroy", :id => "1", :path_prefix => '/hub/')
    end

  end
end
