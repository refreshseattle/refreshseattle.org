require "test_helper"

describe ApplicationHelper do
  describe "#markdown" do
    it "should render markdown" do
      input = "Testing content is **strongly** recommended. _Or else._"
      output = "<p>Testing content is <strong>strongly</strong> recommended. <em>Or else.</em></p>\n" # The Markdown generator adds a newline
      assert_equal output, markdown(input)
    end
  end

  describe "#upcoming_speakers" do
    it "should get a list of speakers" do
      speakers = upcoming_speakers
      assert_not_nil speakers
      assert speakers.instance_of?(Array), "Expected speakers to be an Array"
      assert_equal speakers.first[:name], events(:two).speaker
      assert_equal speakers.first[:date], events(:two).event_date
    end
  end
end
