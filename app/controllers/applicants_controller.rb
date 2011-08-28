class ApplicantsController < ApplicationController
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
        format.html { render :action => "thanks", :notice => 'Applicant was successfully created.' }
        format.json { render :json => @applicant, :status => :created, :location => @applicant }
        
        # send email confirmation
        ApplicantMailer.application_received(@applicant).deliver
        AdminMailer.new_applicant(@applicant).deliver
      else
        format.html { render :action => "new" }
        format.json { render :json => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

end
