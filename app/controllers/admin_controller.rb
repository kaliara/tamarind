class AdminController < ApplicationController
  def home
  end
  
  def login
    @admin = Admin.find_by_email(params[:email])
    if !@admin.nil? and @admin.valid_credentials?(params[:password])    
      session[:admin] = @admin.new_session_id
      # :notice => "Logged in successfully, welcome back."
    else
      # :error => "Wrong email or password."
    end

    render :action => "home"
  end
  
  def logout
    session.clear
    redirect_to root_path
  end
end