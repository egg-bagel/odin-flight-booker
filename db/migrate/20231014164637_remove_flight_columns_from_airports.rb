class RemoveFlightColumnsFromAirports < ActiveRecord::Migration[7.0]
  def change
    remove_column :airports, :departing_flight_id_id, :integer
    remove_column :airports, :arriving_flight_id_id, :integer
  end
end
