class AddRefSpeciesAndRefZoneToSpeciesByZone < ActiveRecord::Migration
  def change
    add_reference :species_by_zones, :zone, index: true
    add_reference :species_by_zones, :species, index: true
  end
end
