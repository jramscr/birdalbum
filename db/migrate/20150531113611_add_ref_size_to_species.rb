class AddRefSizeToSpecies < ActiveRecord::Migration
  def change
    add_reference :species, :size, index: true
  end
end
