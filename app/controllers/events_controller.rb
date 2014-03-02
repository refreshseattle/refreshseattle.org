class EventsController < InheritedResources::Base
  def index
    @events = Event.all.reverse
  end
end
