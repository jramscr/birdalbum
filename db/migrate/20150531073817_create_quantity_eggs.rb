class CreateQuantityEggs < ActiveRecord::Migration
  def change
    create_table :quantity_eggs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
