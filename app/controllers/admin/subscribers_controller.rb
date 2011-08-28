class Admin::SubscribersController < ApplicationController
  before_filter :admin_required

  # GET /admin/subscribers
  # GET /admin/subscribers.json
  def index
    @subscribers = Subscriber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @subscribers }
    end
  end

  # GET /admin/subscribers/1
  # GET /admin/subscribers/1.json
  def show
    @subscriber = Subscriber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @subscriber }
    end
  end

  # GET /admin/subscribers/1/edit
  def edit
    @subscriber = Subscriber.find(params[:id])
  end

  # PUT /admin/subscribers/1
  # PUT /admin/subscribers/1.json
  def update
    @subscriber = Subscriber.find(params[:id])

    respond_to do |format|
      if @subscriber.update_attributes(params[:subscriber])
        format.html { redirect_to admin_subscriber_path(@subscriber), :notice => 'Subscriber was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @subscriber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/subscribers/1
  # DELETE /admin/subscribers/1.json
  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy

    respond_to do |format|
      format.html { redirect_to admin_subscribers_url }
      format.json { head :ok }
    end
  end
end
