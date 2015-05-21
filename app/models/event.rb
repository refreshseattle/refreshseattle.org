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
    self.site_name = "Code Fellows" if self.site_name.nil?
    self.site_address = "511 Boren Ave. N, Seattle, WA 98109" if self.site_address.nil?
  end
end
