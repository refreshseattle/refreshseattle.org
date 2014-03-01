require 'test_helper'

describe EventsController do
  describe "#index" do
    it "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns :event
      assert_template "events/show"
    end

    it "should show 'no_event' template when no events are featured" do
      featured_event = Event.where(featured: true).first
      featured_event.update_attribute(:featured, false)
      featured_event.save!

      get :index
      assert_response :success
      assert_nil assigns :event
      assert_template "events/no_event"
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
