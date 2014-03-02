require 'test_helper'

describe EventsController do
  describe "#index" do
    it "should have a list of events" do
      get :index
      assert_response :success
      assert_not_nil assigns :events
      assert_template "events/index"
    end
  end

  describe "#show" do
    it "should display event" do
      event = events(:one)
      get :show, id: event
      assert_response :success
      assert_not_nil assigns :event
    end
  end
end
