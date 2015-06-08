class CreateBirdByUsers < ActiveRecord::Migration
  def change
    create_table :bird_by_users do |t|

      t.timestamps null: false
    end
  end
end
