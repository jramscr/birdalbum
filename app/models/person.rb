class Person < ActiveRecord::Base
  has_one :user
  has_many :contact_by_people
  has_many :contacts, through: :contact_by_people
end
