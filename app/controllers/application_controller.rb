class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def require_user_logged_in
    unledd logged_in?
      redirect_to login_url
    end
  end
end
