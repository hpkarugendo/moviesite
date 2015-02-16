class ApplicationController < ActionController::Base
include ApplicationHelper
  protect_from_forgery
  def authorise
	unless signed_in?
		store_location
		redirect_to signin_path, :notice => "You must sign in to access this page"
	end
  end
  
  def store_location
	session[:return_to] = request.fullpath
  end
end
