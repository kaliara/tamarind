class SubscribersController < ApplicationController
  # GET /subscribers/new
  # GET /subscribers/new.json
  def new
    @subscriber = Subscriber.new

    respond_to do |format|
      format.html # new.html.erb
      format.pdf do
        render :pdf => "new"
      end
      format.json { render :json => @subscriber }
    end
  end

  # POST /subscribers
  # POST /subscribers.json
  def create
    @subscriber = Subscriber.new(params[:subscriber])

    respond_to do |format|
      if @subscriber.save
        format.html { render :action => "thanks" }
        format.json { render :json => @subscriber, :status => :created, :location => @subscriber }
      else
        format.html { render :action => "new" }
        format.json { render :json => @subscriber.errors, :status => :unprocessable_entity }
      end
    end
  end

end
