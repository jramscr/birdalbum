class AddRefBeakTypeToSpecies < ActiveRecord::Migration
  def change
    add_reference :species, :beak_type, index: true
  end
end
