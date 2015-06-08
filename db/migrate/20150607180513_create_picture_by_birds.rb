class CreatePictureByBirds < ActiveRecord::Migration
  def change
    create_table :picture_by_birds do |t|

      t.timestamps null: false
    end
  end
end
