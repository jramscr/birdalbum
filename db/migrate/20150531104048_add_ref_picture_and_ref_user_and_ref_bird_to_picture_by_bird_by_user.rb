class AddRefPictureAndRefUserAndRefBirdToPictureByBirdByUser < ActiveRecord::Migration
  def change
    add_reference :picture_by_bird_by_users, :picture, index: true
    add_reference :picture_by_bird_by_users, :user, index: true
    add_reference :picture_by_bird_by_users, :bird, index: true
  end
end
