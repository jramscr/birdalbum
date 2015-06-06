class AddRefSpeciesAndRefColorToSpeciesColor < ActiveRecord::Migration
  def change
    add_reference :species_colors, :species, index: true
    add_reference :species_colors, :color, index: true
  end
end
