class AddRefKindToBird < ActiveRecord::Migration
  def change
    add_reference :birds, :kind, index: true
  end
end
