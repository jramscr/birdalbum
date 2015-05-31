class AddRefSpeciesToGender < ActiveRecord::Migration
  def change
    add_reference :species, :gender, index: true
  end
end
