class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :female_size
      t.string :male_size

      t.timestamps null: false
    end
  end
end
