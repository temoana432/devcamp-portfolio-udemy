module CurrentUserConcern
 extend ActiveSupport::Concern

 def current_user
    # if current_user exists then use it, otherwise create an OpenStruct guest user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@example.com"
                  )
  end
end
