class Species < ActiveRecord::Base
  belongs_to :gender

  has_many :species_by_zones
  has_many :zones, through: :species_by_zones

  has_many :species_colors
  has_many :colors, through: :species_colors

  accepts_nested_attributes_for :zones, reject_if: :all_blank, allow_destroy: true
end
