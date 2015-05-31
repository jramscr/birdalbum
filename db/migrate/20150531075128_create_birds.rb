class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :commonName
      t.string :scientificName
      t.string :description

      t.timestamps null: false
    end
  end
end
