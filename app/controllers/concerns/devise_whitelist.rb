<<<<<<< HEAD
#Note name of module matches the name of the .rb file with values after _ capitalized. Necessary for the rails parser to resolve 
module DeviseWhitelist
  extend ActiveSupport::Concern

  included do 
=======
module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
>>>>>>> mine_view_stuff
    before_filter :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
<<<<<<< HEAD
    #Note these are specific to rails 5. Note only have to pass in parameters that devise is not already 
    #accommodating (so don't need email)
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])   #registration route 
    devise_parameter_sanitizer.permit(:account_update, keys:[:name])      #editing route
  end 

end
=======
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
>>>>>>> mine_view_stuff
