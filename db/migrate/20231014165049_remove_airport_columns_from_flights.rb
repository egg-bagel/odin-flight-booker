class RemoveAirportColumnsFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :arrival_airport_id_id, :integer
    remove_column :flights, :departure_airport_id_id, :integer
  end
end
