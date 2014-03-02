class HomeController < ApplicationController
  def index
    @event = Event.where(featured: true).first
    if @event
      render template: "events/show"
    else
      render template: "events/no_event"
    end
  end

  # TODO: These should be individual pages, not hard-coded here
  def sponsors
  end

  def subscribed
  end

  def thankyou
  end
end
