class ApplicationController < ActionController::Base
  include Session
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Session

  protected

  def require_login

  	unless current_user
  		redirect_to login_path
  		return false
  	end

  end

end
