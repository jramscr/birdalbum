class CreatePictureByUsers < ActiveRecord::Migration
  def change
    create_table :picture_by_users do |t|

      t.timestamps null: false
    end
  end
end
