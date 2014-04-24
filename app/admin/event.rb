ActiveAdmin.register Event do
  form do |f|
    # TODO: The values in this form should use the stored data if present
    f.inputs "Feature" do
      f.input :featured, label: "Show on homepage?"
    end

    f.inputs "Time" do
      f.input :event_date, as: :date_picker
      f.input :event_start_time, label: "Event Starts At", as: :time_picker
      f.input :event_end_time, label: "Event Ends At", as: :time_picker
    end

    f.inputs "Location" do
      f.input :site_name, label: "Location"
      f.input :site_address, label: "Address"
    end

    f.inputs "Details" do
      f.input :speaker, label: "Speaker Name"
      f.input :title, label: "Event Title"
      f.input :description
      f.input :eventbrite_id, label: "Eventbrite Event ID"
    end

    f.actions
  end
end
