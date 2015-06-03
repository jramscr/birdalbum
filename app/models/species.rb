class Species < ActiveRecord::Base
  belongs_to :gender
  has_many :color_by_species
  has_many :colors, through: :color_by_species
  has_many :species_by_zones
  has_many :zones, through: :species_by_zones
end
