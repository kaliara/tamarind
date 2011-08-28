class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  
  # def user_agent_browser
    # request.user_agent
  # end
  
  def admin?
    !session[:admin].blank? and !Admin.find_by_session(session[:admin]).nil?
  end
  
  def admin_required
    redirect_to root_url unless admin?
  end
end
