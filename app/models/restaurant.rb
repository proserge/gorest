# frozen_string_literal: true

class Restaurant < ApplicationRecord
  # Class for restaurant.
  # Each restaurant has:
  #   name;
  #   cuisine;
  #   address;
  #   phone number.
  # Working hours are stored in separate table (WorkingHour model).

  # has_many :tables, dependent: :destroy
  # has_many :reservations, dependent: :destroy
  has_many :working_hours, dependent: :destroy

  validates :name, presence: true

  validates :cuisine, presence: true

  validates :address, presence: true

  validates :phone, presence: true

end
