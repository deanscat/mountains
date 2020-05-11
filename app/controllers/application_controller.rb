class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    #before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :masquerade_user!
    
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    helper_method :current_user

    #protected
     #   def configure_permitted_parameters 
    #        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      #      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :a])
     #   end
end
