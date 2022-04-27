class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern


=======
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
>>>>>>> mine_view_stuff
end
