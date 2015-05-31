class CreateSubOrders < ActiveRecord::Migration
  def change
    create_table :sub_orders do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
