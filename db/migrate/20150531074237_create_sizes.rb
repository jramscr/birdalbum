class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :femaleSize
      t.string :maleSize

      t.timestamps null: false
    end
  end
end
