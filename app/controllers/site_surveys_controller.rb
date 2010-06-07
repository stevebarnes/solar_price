class SiteSurveysController < ApplicationController
    before_filter :get_postcode
#  def index
#    @site_surveys = SiteSurvey.all
#  end
#
#  def show
#    @site_survey = SiteSurvey.find(params[:id])
#  end
  
  def new
    @site_survey = @postcode.build_site_survey
  end
  
  def create
    @site_survey = @postcode.build_site_survey(params[:site_survey])
    if @site_survey.save
      redirect_to new_postcode_sizing_path(@postcode)
#      flash[:notice] = "Successfully created site survey."
#      redirect_to @site_survey
    else
      render :action => 'new'
    end
  end
  
#  def edit
#    @site_survey = SiteSurvey.find(params[:id])
#  end
  
#  def update
#    @site_survey = SiteSurvey.find(params[:id])
#    if @site_survey.update_attributes(params[:site_survey])
#      flash[:notice] = "Successfully updated site survey."
#      redirect_to @site_survey
#    else
#      render :action => 'edit'
#    end
#  end
#
#  def destroy
#    @site_survey = SiteSurvey.find(params[:id])
#    @site_survey.destroy
#    flash[:notice] = "Successfully destroyed site survey."
#    redirect_to site_surveys_url
#  end
end
