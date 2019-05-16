# frozen_string_literal: true

class WorkingHour < ApplicationRecord
  # Class for working hours of restaurants.
  # Each record contains:
  #   restaurant id;
  #   open hour;
  #   close hour.
  # Working hours are stored in integer format. It contains a numer of 5-minutes
  # intervals passed since start of the week (Sunday midnight). The number of
  # working hours is unlimited

  belongs_to :restaurant

  validates :open_hour, :close_hour, presence: true

  validates :open_hour, :close_hour,
        numericality: { less_than_or_eqial_to: GlobalConstants::WEEK_DURATION }

end
