class AddRefColorAndRefSpeciesToColorBySpecies < ActiveRecord::Migration
  def change
    add_reference :color_by_species, :color, index: true
    add_reference :color_by_species, :species, index: true
  end
end
