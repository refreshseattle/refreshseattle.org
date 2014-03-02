require 'test_helper'

describe Event do
  let(:event) { Event.new }
  let(:presence_error_message) { ["can't be blank"] }

  it "should require date" do
    event.invalid?(:event_date).must_equal true
    event.errors[:event_date].must_equal presence_error_message
  end

  it "should require start time" do
    event.invalid?(:event_start_time).must_equal true
    event.errors[:event_start_time].must_equal presence_error_message
  end

  it "should require end time" do
    event.invalid?(:event_end_time).must_equal true
    event.errors[:event_end_time].must_equal presence_error_message
  end

  it "should require site name" do
    event.invalid?(:site_name).must_equal true
    event.errors[:site_name].must_equal presence_error_message
  end

  it "should require site address" do
    event.invalid?(:site_address).must_equal true
    event.errors[:site_address].must_equal presence_error_message
  end

  it "should require title" do
    event.invalid?(:title).must_equal true
    event.errors[:title].must_equal presence_error_message
  end

  it "should require description" do
    event.invalid?(:description).must_equal true
    event.errors[:description].must_equal presence_error_message
  end

  it "should require eventbrite id" do
    event.invalid?(:eventbrite_id).must_equal true
    event.errors[:eventbrite_id].must_equal presence_error_message
  end

  it "should only allow one featured event"

  it "should know if it is an upcoming event" do
    events(:one).is_upcoming?.must_equal false

    events(:two).is_upcoming?.must_equal true
    future_event = events :future
    future_event.is_upcoming?.must_equal true
  end
end
