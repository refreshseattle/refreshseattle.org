class EventsController < InheritedResources::Base
  def index
    @event = Event.where(featured: true).first
    if @event
      render template: "events/show"
    else
      render template: "events/no_event"
    end
  end
end
