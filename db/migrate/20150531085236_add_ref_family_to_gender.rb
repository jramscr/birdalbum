class AddRefFamilyToGender < ActiveRecord::Migration
  def change
    add_reference :genders, :family, index: true
  end
end
