Time::DATE_FORMATS[:month_and_day] = lambda { |time| time.strftime("%B %-d<sup>#{ActiveSupport::Inflector.ordinal(time.day)}</sup>").html_safe }
Time::DATE_FORMATS[:month_day_year] = lambda { |time| time.strftime("%B %-d<sup>#{ActiveSupport::Inflector.ordinal(time.day)}</sup> %Y").html_safe }
Time::DATE_FORMATS[:time_no_meridian] = "%l:%M"
Time::DATE_FORMATS[:time_with_meridian] = "%l:%M%P"
