module SetSource 
  extend ActiveSupport::Concern

  included do 
    before_filter :set_source
  end
  

  def set_source
    session[:source] = params[:origin] if params[:origin]
  end
end