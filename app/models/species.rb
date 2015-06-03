class Species < ActiveRecord::Base
  belongs_to :gender

  has_many :color_by_species
  has_many :colors, through: :color_by_species

  has_many :species_by_zones
  has_many :zones, through: :species_by_zones

  accepts_nested_attributes_for :zones, reject_if: :all_blank, allow_destroy: true
end
