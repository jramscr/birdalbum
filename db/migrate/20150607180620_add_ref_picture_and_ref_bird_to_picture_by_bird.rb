class AddRefPictureAndRefBirdToPictureByBird < ActiveRecord::Migration
  def change
    add_reference :picture_by_birds, :picture, index: true
    add_reference :picture_by_birds, :bird, index: true
  end
end
