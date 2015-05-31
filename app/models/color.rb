class Color < ActiveRecord::Base
  has_many :color_by_species
  has_many :species, through: :color_by_species
end
