module CurrentUserConcern
<<<<<<< HEAD
 extend ActiveSupport::Concern

 def current_user
    # if current_user exists then use it, otherwise create an OpenStruct guest user
=======
  extend ActiveSupport::Concern

  def current_user
>>>>>>> mine_view_stuff
    super || guest_user
  end

  def guest_user
<<<<<<< HEAD
    OpenStruct.new(name: "Guest", 
                            first_name: "Guest", 
                            last_name: "Guest", 
                            email: "guest@nowhere.com")
  end

end
=======
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@example.com"
                  )
  end
end
>>>>>>> mine_view_stuff
