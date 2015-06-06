module UsersHelper
  def formatted_user_type(user)
    UserType.find(user.user_type_id).name
  end

end
