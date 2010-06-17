# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def get_postcode
    @postcode = Postcode.find_by_id(params[:postcode_id])
    redirect_to new_postcode_path unless @postcode # if url string is hacked, go back to start page
  end
end
