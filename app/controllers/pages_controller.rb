class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.json
  def show
    if File.exists?(Rails.root.join("app", "views", "pages", "#{params[:slug]}.html.erb"))
      render :action => params[:slug]
    else
      @page = Page.find_by_slug(params[:slug])
      if @page.nil?
        redirect_to root_path
      else
        respond_to do |format|
          format.html # show.html.erb
          format.json { render :json => @page }
        end
      end
    end
  end
end