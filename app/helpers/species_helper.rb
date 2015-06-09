module SpeciesHelper

  def formatted_beak_type(species)
    if species.beak_type_id.nil?
      "No se encontro un tipo de pico"
    else
      BeakType.find(species.beak_type_id).name
    end
  end

  def formatted_size(size)
    if size.description.nil?
      "No hay tamaño"
    else
      "#{Size.find(size).description} apróximadamente."
    end
  end

  def formatted_eggs_quantity(species)
    if species.quantity_egg_id.nil?
      "No hay una cantidad de huevos definida"
    else
      QuantityEgg.find(species.quantity_egg_id).description
    end
  end

  def formatted_zone_name(zone)
    if zone.description.nil?
      "No se informa la descripcion de la zona"
    else
      zone.description
    end
  end

  def formatted_zones_info(species)
    if species.zones.any?
      species.zones.pluck(:description).join(", ")
    else
      "Información no disponible"
    end
  end

end
