class AddColumnNameToCommonName < ActiveRecord::Migration
  def change
    add_column :common_names, :name, :string
  end
end
