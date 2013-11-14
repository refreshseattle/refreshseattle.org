ActiveAdmin.register Event do
  today = Time.new
  form do |f|
    f.inputs "Time" do
      f.input :event_date, as: :date_picker, input_html: {value: "#{today.year}-#{today.month}-#{today.day}"}
      f.input :event_start_time, label: "Event Starts At", as: :time_picker, input_html: { value: "18:00" }
      f.input :event_end_time, label: "Event Ends At", as: :time_picker, input_html: { value: "21:00" }
    end

    f.inputs "Location" do
      f.input :site_name, label: "Location", input_html: {value: "Substantial"}
      f.input :site_address, label: "Address", input_html: {value: "900 E. Pine St. Seattle WA 98122"}
    end

    f.inputs "Details" do
      f.input :title, label: "Event Title"
      f.input :description
      f.input :eventbrite_id, label: "Eventbrite Event ID", input_html: {value: "8922626817"}
    end

    f.actions
  end
end
