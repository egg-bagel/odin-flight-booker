class AddReferencesToFlights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :departure_airport, index: true, foreign_key: { to_table: :airports }
    add_reference :flights, :arrival_airport, index: true, foreign_key: { to_table: :airports }
  end
end
