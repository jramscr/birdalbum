class AddRefOrderInSubOrder < ActiveRecord::Migration
  def change
    add_reference :sub_orders, :order, index: true
  end
end
