class RemoveMinimumAndMaximumAltitudeFromZone < ActiveRecord::Migration
  def change
    remove_column :zones, :maximum_altitude, :string
    remove_column :zones, :minimum_altitude, :string
  end
end
