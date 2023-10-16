class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure_airport_id, null: false
      t.references :arrival_airport_id, null: false
      t.datetime :departure_time
      t.string :flight_duration

      t.timestamps
    end
  end
end
