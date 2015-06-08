class RemoveColumnFemaleSizeFromSizeAndRenameMaleSizeToDescription < ActiveRecord::Migration
  def change
    remove_column :sizes, :female_size
    remove_column :sizes, :male_size
  end
end
