class FreeReportsController < ApplicationController
  def index
    @free_reports = FreeReport.all
  end
  
  def show
    @free_report = FreeReport.find(params[:id])
  end
  
  def new
    @free_report = FreeReport.new
  end
  
  def create
    @free_report = FreeReport.new(params[:free_report])
    if @free_report.save
      flash[:notice] = "Successfully created free report."
      redirect_to @free_report
    else
      render :action => 'new'
    end
  end
  
  def edit
    @free_report = FreeReport.find(params[:id])
  end
  
  def update
    @free_report = FreeReport.find(params[:id])
    if @free_report.update_attributes(params[:free_report])
      flash[:notice] = "Successfully updated free report."
      redirect_to @free_report
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @free_report = FreeReport.find(params[:id])
    @free_report.destroy
    flash[:notice] = "Successfully destroyed free report."
    redirect_to free_reports_url
  end
end
