class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :name

      t.timestamps null: false
    end
  end
end
