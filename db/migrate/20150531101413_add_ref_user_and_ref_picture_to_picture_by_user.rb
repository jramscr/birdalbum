class AddRefUserAndRefPictureToPictureByUser < ActiveRecord::Migration
  def change
    add_reference :picture_by_users, :user, index: true
    add_reference :picture_by_users, :picture, index: true
  end
end
