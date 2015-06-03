module SpeciesHelper

  def formatted_beak_type(species)
    BeakType.find(species.beak_type_id).name
  end

  def formatted_size(size)
    "Tamaño hembra #{Size.find(size).femaleSize} cm y macho #{Size.find(size).maleSize} cm"
  end

  def formatted_eggs_quantity(species)
    QuantityEgg.find(species.quantity_egg_id).description
  end

end
