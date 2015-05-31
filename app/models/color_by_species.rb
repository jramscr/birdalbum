class ColorBySpecies < ActiveRecord::Base
  belongs_to :species
  belongs_to :color
end
