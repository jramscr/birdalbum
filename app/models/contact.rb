class Contact < ActiveRecord::Base
  has_one :contact_type
  has_many :contact_by_people
  has_many :persons, through: :contact_by_people
end
