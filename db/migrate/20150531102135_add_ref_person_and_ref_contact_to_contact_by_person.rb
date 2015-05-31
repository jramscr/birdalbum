class AddRefPersonAndRefContactToContactByPerson < ActiveRecord::Migration
  def change
    add_reference :contact_by_people, :person, index: true
    add_reference :contact_by_people, :contact, index: true
  end
end
