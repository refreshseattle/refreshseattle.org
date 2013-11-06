require 'test_helper'

describe EventsController do
  let(:event) { events :one }

  it "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  it "should show event" do
    get :show, id: event
    assert_response :success
  end
end
