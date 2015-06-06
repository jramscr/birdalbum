class RegistrationsController < Devise::RegistrationsController

  protected

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation,  :user_type_id, :person_id)
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
