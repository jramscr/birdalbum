class Zone < ActiveRecord::Base
  has_many :species_by_zones
  has_many :species, through: :species_by_zones
end
