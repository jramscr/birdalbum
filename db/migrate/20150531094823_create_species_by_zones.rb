class CreateSpeciesByZones < ActiveRecord::Migration
  def change
    create_table :species_by_zones do |t|

      t.timestamps null: false
    end
  end
end
