class SiteDetailsController < ApplicationController
  def index
    @site_details = SiteDetails.all
  end
  
  def show
    @site_details = SiteDetails.find(params[:id])
  end
  
  def new
    @site_details = SiteDetails.new
  end
  
  def create
    @site_details = SiteDetails.new(params[:site_details])
    if @site_details.save
      redirect_to :controller => "site_surveys", :action => "new"
#      flash[:notice] = "Successfully created site details."
#      redirect_to @site_details
    else
      render :action => 'new'
    end
  end
  
  def edit
    @site_details = SiteDetails.find(params[:id])
  end
  
  def update
    @site_details = SiteDetails.find(params[:id])
    if @site_details.update_attributes(params[:site_details])
      flash[:notice] = "Successfully updated site details."
      redirect_to @site_details
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @site_details = SiteDetails.find(params[:id])
    @site_details.destroy
    flash[:notice] = "Successfully destroyed site details."
    redirect_to site_details_url
  end
end
