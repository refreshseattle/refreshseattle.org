class Event < ActiveRecord::Base
  default_scope { order 'event_date DESC' } # just to be sure that the newest events are at the top of the list
  scope :upcoming, -> { where 'event_date >= ?', Date.today }

  validates :event_date,       presence: true
  validates :event_start_time, presence: true
  validates :event_end_time,   presence: true
  validates :site_name,        presence: true
  validates :site_address,     presence: true
  validates :title,            presence: true
  validates :description,      presence: true
  validates :eventbrite_id,    presence: true
  validates :speaker,          presence: true

  def is_upcoming?
    event_date.to_date >= Date.today
  end
end
