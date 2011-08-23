class Admin::ApplicantsController < ApplicationController
  # GET /admin/applicants
  # GET /admin/applicants.json
  def index
    @applicants = Applicant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @applicants }
    end
  end

  # GET /admin/applicants/1
  # GET /admin/applicants/1.json
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @applicant }
    end
  end

  # GET /admin/applicants/1/edit
  def edit
    @applicant = Applicant.find(params[:id])
  end

  # PUT /admin/applicants/1
  # PUT /admin/applicants/1.json
  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if @applicant.update_attributes(params[:applicant])
        format.html { redirect_to admin_applicant_path(@applicant), :notice => 'Applicant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/applicants/1
  # DELETE /admin/applicants/1.json
  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    respond_to do |format|
      format.html { redirect_to admin_applicants_url }
      format.json { head :ok }
    end
  end
end
