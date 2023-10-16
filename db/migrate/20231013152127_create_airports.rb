class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :code
      t.references :departing_flight_id, null: false
      t.references :arriving_flight_id, null: false

      t.timestamps
    end
  end
end
