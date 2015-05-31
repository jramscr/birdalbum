class Gender < ActiveRecord::Base
  belongs_to :family
  has_one :species
end
