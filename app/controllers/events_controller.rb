class EventsController < InheritedResources::Base
  def index
    @events = Event.all
  end
end
