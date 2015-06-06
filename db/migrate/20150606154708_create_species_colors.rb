class CreateSpeciesColors < ActiveRecord::Migration
  def change
    create_table :species_colors do |t|

      t.timestamps null: false
    end
  end
end
