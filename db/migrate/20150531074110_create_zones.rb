class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :description
      t.string :maximum_altitude
      t.string :minimum_altitude

      t.timestamps null: false
    end
  end
end
