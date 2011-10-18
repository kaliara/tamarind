class MenusController < ApplicationController
  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.viewable

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @menus }
    end
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    @menu = Menu.find_by_slug(params[:slug])
    
    unless @menu.nil? or !@menu.viewable?
      @body_class = "menus menu_#{@menu.slug}"
      respond_to do |format|
        format.html # show.html.erb
        format.pdf do
          render :pdf => "show",
                 :layout => "pdf.html",
                 :no_background => false,
                 :show_as_html => params[:debug].present?,
                 :page_size => "A3",
                 :margin => {
                   :top                => 0,
                   :bottom             => 0,
                   :left               => 0,
                   :right              => 0
                 }
        end
        format.json { render :json => @menu }
      end
    else
      redirect_to menus_path
    end
  end
end
