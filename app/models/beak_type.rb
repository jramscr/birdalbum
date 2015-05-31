class BeakType < ActiveRecord::Base
  has_many :picture_by_beak_types
  has_many :pictures, through: :picture_by_beak_types
  has_many :species
end
