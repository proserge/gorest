# frozen_string_literal: true

module ApplicationHelper
  def period_to_time(period)
    minutes_in_period = period * GlobalConstants::TIME_GRANULARITY
    day = minutes_in_period / 60 / 24
    hours = (minutes_in_period - day * 24 * 60) / 60
    minutes = minutes_in_period - (day * 24 + hours) * 60
    "#{GlobalConstants::DAY_OF_WEEK[day]} - #{hours}:%02d" % minutes
  end

  def time_to_period(day, hours, minutes)
    ((day * 24 + hours) * 60 + minutes) / GlobalConstants::TIME_GRANULARITY
  end
end
