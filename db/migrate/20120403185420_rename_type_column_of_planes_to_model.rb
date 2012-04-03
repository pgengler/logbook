class RenameTypeColumnOfPlanesToModel < ActiveRecord::Migration
  def change
		rename_column :planes, :type, :model
  end
end
