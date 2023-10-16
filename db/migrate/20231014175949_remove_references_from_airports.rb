class RemoveReferencesFromAirports < ActiveRecord::Migration[7.0]
  def change
    remove_reference :airports, :departing_flight, index: true, foreign_key: { to_table: :flights }
    remove_reference :airports, :arriving_flight, index: true, foreign_key: { to_table: :flights }
  end
end
