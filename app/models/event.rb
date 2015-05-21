class Event < ActiveRecord::Base
  default_scope { order 'event_date DESC' } # just to be sure that the newest events are at the top of the list
  scope :upcoming, -> { where 'event_date >= ?', Date.today }
  after_initialize :default_values

  validates :event_date,       presence: true
  validates :event_start_time, presence: true
  validates :event_end_time,   presence: true
  validates :site_name,        presence: true
  validates :site_address,     presence: true
  validates :title,            presence: true
  validates :description,      presence: true
  validates :eventbrite_id,    presence: false
  validates :speaker,          presence: true

  def is_upcoming?
    event_date.to_date >= Date.today
  end

  private
  def default_values
    today = Time.new
    self.event_date = "#{today.year}-#{today.month}-#{today.day}" if self.event_date.nil?
    self.event_start_time = "18:30" if self.event_start_time.nil?
    self.event_end_time = "21:00" if self.event_end_time.nil?
    self.site_name = "Substantial" if self.site_name.nil?
    self.site_address = "900 E. Pine St. Seattle WA 98122" if self.site_address.nil?
    self.eventbrite_id = "8922626817" if self.eventbrite_id.nil?
  end
end
