class AddReferencesToAirports < ActiveRecord::Migration[7.0]
  def change
    add_reference :airports, :departing_flight, index: true, foreign_key: { to_table: :flights }
    add_reference :airports, :arriving_flight, index: true, foreign_key: { to_table: :flights }
  end
end
