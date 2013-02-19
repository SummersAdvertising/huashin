class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery
  def require_is_admin
  	unless(session[:admin])
  		redirect_to admin_log_in_path
  	end
  end
end
