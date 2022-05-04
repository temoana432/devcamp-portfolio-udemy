class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = SteveCViewTool::Renderer.copyright 'Steve Clarke', 'All Rights Reserved'
    # binding.pry
  end
end

module SteveCViewTool
  class Renderer 
    def self.copyright name, msg
      # Use the html copyright symbol
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
