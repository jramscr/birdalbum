class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :description
      t.string :maximumAltitude
      t.string :minimumAltitude

      t.timestamps null: false
    end
  end
end
