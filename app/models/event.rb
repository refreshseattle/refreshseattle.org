class Event < ActiveRecord::Base
  validates :event_date,       presence: true
  validates :event_start_time, presence: true
  validates :event_end_time,   presence: true
  validates :site_name,        presence: true
  validates :site_address,     presence: true
  validates :title,            presence: true
  validates :description,      presence: true
  validates :eventbrite_id,    presence: true
end
