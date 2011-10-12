class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.json
  def show
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