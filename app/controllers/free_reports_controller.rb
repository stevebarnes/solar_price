class FreeReportsController < ApplicationController
  before_filter :get_postcode
#  def index
#    @free_reports = FreeReport.all
#  end
#
#  def show
#    @free_report = FreeReport.find(params[:id])
#  end
  
  def new
    @free_report = @postcode.build_free_report
  end
  
  def create
    @free_report = @postcode.build_free_report(params[:free_repoort])
    if @free_report.save
       flash[:notice] = "Thank you for choosing mysolarprice.com.au"
#      redirect_to @free_report
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
  
#  def edit
#    @free_report = FreeReport.find(params[:id])
#  end
#
#  def update
#    @free_report = FreeReport.find(params[:id])
#    if @free_report.update_attributes(params[:free_report])
#      flash[:notice] = "Successfully updated free report."
#      redirect_to @free_report
#    else
#      render :action => 'edit'
#    end
#  end
#
#  def destroy
#    @free_report = FreeReport.find(params[:id])
#    @free_report.destroy
#    flash[:notice] = "Successfully destroyed free report."
#    redirect_to free_reports_url
#  end
end
