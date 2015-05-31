class CreatePictureByBeakTypes < ActiveRecord::Migration
  def change
    create_table :picture_by_beak_types do |t|

      t.timestamps null: false
    end
  end
end
