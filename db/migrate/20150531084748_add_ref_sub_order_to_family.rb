class AddRefSubOrderToFamily < ActiveRecord::Migration
  def change
    add_reference :families, :sub_order, index: true
  end
end
