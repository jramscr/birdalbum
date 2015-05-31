class AddRefQuantityEggToSpecies < ActiveRecord::Migration
  def change
    add_reference :species, :quantity_egg, index: true
  end
end
