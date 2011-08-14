class ApplicantsController < ApplicationController
  # GET /applicants/1
  # GET /applicants/1.json
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @applicant }
    end
  end

  # GET /applicants/new
  # GET /applicants/new.json
  def new
    @applicant = Applicant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @applicant }
    end
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(params[:applicant])

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to @applicant, :notice => 'Applicant was successfully created.' }
        format.json { render :json => @applicant, :status => :created, :location => @applicant }
      else
        format.html { render :action => "new" }
        format.json { render :json => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

end
