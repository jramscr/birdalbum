class AddDescriptionToSize < ActiveRecord::Migration
  def change
    add_column :sizes, :description, :string
  end
end
