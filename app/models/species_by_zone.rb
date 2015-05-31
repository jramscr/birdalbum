class SpeciesByZone < ActiveRecord::Base
  belongs_to :zone
  belongs_to :species
end
