class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:first_name, :email, :age, :password, :password_confirmation)
  end
  # def after_sign_up_path_for(resource)
  #   visitors_request_messages_path(resource)
  # end
end

 # def after_sign_in_path_for(resource)
  #   redirect_to visitors_request_messages
  # end
