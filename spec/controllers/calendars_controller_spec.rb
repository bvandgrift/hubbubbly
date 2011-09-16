require 'spec_helper'

# TODO: export updates to management area
describe CalendarsController do

  def valid_attributes
    {:name => "Test Calendar", :url => "http://test-host.test"}
  end

  describe "GET index" do
    it "assigns all calendars as @calendars" do
      calendar = Calendar.create! valid_attributes
      get :index
      assigns(:calendars).should eq([calendar])
    end
  end

  describe "GET show" do
    it "assigns the requested calendar as @calendar" do
      calendar = Calendar.create! valid_attributes
      get :show, :id => calendar.id.to_s
      assigns(:calendar).should eq(calendar)
    end
  end

  describe "GET new" do
    it "assigns a new calendar as @calendar" do
      get :new
      assigns(:calendar).should be_a_new(Calendar)
    end
  end

  describe "GET edit" do
    it "assigns the requested calendar as @calendar" do
      calendar = Calendar.create! valid_attributes
      get :edit, :id => calendar.id.to_s
      assigns(:calendar).should eq(calendar)
    end
  end

end
