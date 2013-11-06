class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date     :event_date
      t.time     :event_start_time
      t.time     :event_end_time
      t.string   :site_name
      t.string   :site_address
      t.string   :title
      t.text     :description
      t.string   :eventbrite_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
