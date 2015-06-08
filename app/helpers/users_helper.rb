module UsersHelper
  def formatted_user_type(user)
    if user.user_type.nil?
      "Administrador"
    else
      UserType.find(user.user_type_id).name
    end
  end

end
