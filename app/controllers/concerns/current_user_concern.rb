module CurrentUserConcern
 extend ActiveSupport::Concern

 def current_user
    # if current_user exists then use it, otherwise create an OpenStruct guest user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest", 
                            first_name: "Guest", 
                            last_name: "Guest", 
                            email: "guest@nowhere.com")
  end

end
