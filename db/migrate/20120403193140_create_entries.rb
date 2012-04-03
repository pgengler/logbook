class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :flown
      t.references :plane
      t.string :from
      t.string :to
      t.text :remarks
      t.integer :takeoffs
      t.integer :landings
      t.decimal :sel
      t.decimal :mel
      t.decimal :night
      t.decimal :actual_instrument
      t.decimal :simulated_instrument
      t.integer :instrument_approaches
      t.decimal :flight_simulator
      t.decimal :cross_country
      t.decimal :solo
      t.decimal :dual_received
      t.decimal :pic
      t.decimal :total_flight

      t.timestamps
    end
    add_index :entries, :plane_id
  end
end
