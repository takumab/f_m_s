class RenameTypeInServices < ActiveRecord::Migration
  def change
  	rename_column :services, :type, :location_of_service
  end
end
