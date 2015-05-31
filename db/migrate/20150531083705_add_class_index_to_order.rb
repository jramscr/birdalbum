class AddClassIndexToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :kind, index: true
  end
end
