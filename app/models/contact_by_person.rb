class ContactByPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :contact
end