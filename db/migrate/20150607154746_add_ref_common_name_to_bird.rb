class AddRefCommonNameToBird < ActiveRecord::Migration
  def change
    add_reference :birds, :common_name, index: true
  end
end
