class AddRefBeakTypeAndRefPictureToPictureByBeakType < ActiveRecord::Migration
  def change
    add_reference :picture_by_beak_types, :picture, index: true
    add_reference :picture_by_beak_types, :beak_type, index: true
  end
end
