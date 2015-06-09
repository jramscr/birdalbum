module BirdsHelper

  def common_name(bird)
    if bird.common_name_id?
      CommonName.find(bird.common_name_id)
    else
      "Sin Nombre Común"
    end
  end

  def gender(bird)
    if bird.species_id?
      Gender.find(Species.find(bird.species_id).gender_id)
    else
      "Sin Género"
    end
  end

  def species(bird)
    if bird.species_id?
      Species.find(bird.species_id)
    else
      "Sin Especie"
    end
  end

  def beak(bird)
    if bird.species_id?
      BeakType.find(Species.find(bird.species_id).beak_type_id)
    else
      "Sin Tipo de Pico"
    end
  end

  def size(bird)
    if bird.species_id?
      Size.find(Species.find(bird.species_id).size_id)
    else
      "Sin Tamaño"
    end
  end

  def egg(bird)
    if bird.species_id?
      QuantityEgg.find(Species.find(bird.species_id).quantity_egg_id)
    else
      "Sin Cantidad de Huevos"
    end
  end

end
