class CreateCommonNames < ActiveRecord::Migration
  def change
    create_table :common_names do |t|

      t.timestamps null: false
    end
  end
end
