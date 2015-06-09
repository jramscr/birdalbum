class AddRefUserToBird < ActiveRecord::Migration
  def change
    add_reference :birds, :user, index: true
  end
end
