class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :tail_number
      t.string :type

      t.timestamps
    end
  end
end
