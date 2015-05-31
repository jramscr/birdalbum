class CreateColorBySpecies < ActiveRecord::Migration
  def change
    create_table :color_by_species do |t|

      t.timestamps null: false
    end
  end
end
