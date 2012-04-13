class RemoveFlightSimulatorColumnFromEntries < ActiveRecord::Migration
  def up
		remove_column :entries, :flight_simulator
  end

  def down
		raise ActiveRecord::IrreversibleMigration
  end
end
