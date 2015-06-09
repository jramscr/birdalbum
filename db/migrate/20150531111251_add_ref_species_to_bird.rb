class AddRefSpeciesToBird < ActiveRecord::Migration
  def change
    add_reference :birds, :species, index: true
  end
end
