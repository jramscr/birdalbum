class Color < ActiveRecord::Base
  has_many :species_colors
  has_many :species, through: :species_colors
end
