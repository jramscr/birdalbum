module UsersHelper
  def formatted_user_type(user)
    if user.user_type.nil?
      "Aficionado"
    else
      UserType.find(user.user_type_id).name
    end
  end

  def formatted_person_name(user)
    if user.person.nil?
      "Sin nombre"
    else
      user.person.name
    end
  end

  def formatted_person_lastname(user)
    if user.person.nil?
      "Sin Apellido"
    else
      user.person.lastname
    end
  end

  def formatted_person_identifier(user)
    if user.person.nil?
      "Sin Identificación"
    else
      user.person.identification
    end
  end

  def formatted_email(user)
    unless user.email?
      "Sin correo"
    else
      user.email
    end
  end
end
