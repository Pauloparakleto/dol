class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :user_banished?, if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def user_banished?
    if user_signed_in?
      if current_user.banished?
        redirect_to banished_path
        sign_out current_user
      end
    end
  end

end
