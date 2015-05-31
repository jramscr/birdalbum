class CreateContactByPeople < ActiveRecord::Migration
  def change
    create_table :contact_by_people do |t|

      t.timestamps null: false
    end
  end
end
