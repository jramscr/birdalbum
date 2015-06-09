module SpeciesHelper

  def formatted_beak_type(species)
    BeakType.find(species.beak_type_id).name
  end

  def formatted_size(size)
    "#{Size.find(size).description} apróximadamente."
  end

  def formatted_eggs_quantity(species)
    QuantityEgg.find(species.quantity_egg_id).description
  end

  def formatted_zone_name(zone)
    zone.description
  end

  def formatted_zones_info(species)
    if species.zones.any?
      species.zones.pluck(:description).join(", ")
    else
      "Información no disponible"
    end
  end

end
