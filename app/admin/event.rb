ActiveAdmin.register Event do
  form do |f|
    f.inputs "Time" do
      f.input :event_date
      f.input :event_start_time, label: "Event Starts At"
      f.input :event_end_time, label: "Event Ends At"
    end

    f.inputs "Location" do
      f.input :site_name, label: "Location"
      f.input :site_address, label: "Address"
    end

    f.inputs "Details" do
      f.input :title, label: "Event Title"
      f.input :description
      f.input :eventbrite_id, label: "Eventbrite Event ID"
    end

    f.actions
  end
end
