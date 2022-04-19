class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    #Note these are specific to rails 5. Note only have to pass in parameters that devise is not already 
    #accommodating (so don't need email)
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])   #registration route 
    devise_parameter_sanitizer.permit(:account_update, keys:[:name])      #editing route
  end 


end
