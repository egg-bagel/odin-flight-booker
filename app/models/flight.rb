class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  # Turns departure_time, which is a DateTime, into a Date for easier comparison with search parameters.
  def departure_time_to_date
    departure_time.to_date
  end
end
