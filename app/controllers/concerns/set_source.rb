<<<<<<< HEAD
module SetSource 
  extend ActiveSupport::Concern

  included do 
    before_filter :set_source
  end
  

  def set_source
    session[:source] = params[:origin] if params[:origin]
=======
module SetSource
  extend ActiveSupport::Concern

  included do
    before_filter :set_source
  end

  def set_source
    session[:source] = params[:q] if params[:q]
>>>>>>> mine_view_stuff
  end
end