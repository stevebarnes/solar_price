class PostcodesController < ApplicationController
  def index
    @postcodes = Postcode.all(:joins => :site_details, :joins => :select_product)
  end
  
  def show
    @postcode = Postcode.find(params[:id])
#    @sd = SiteDetails.find_by_postcode(params[:postcode_id => @postcode.id])
#    @ss = SiteSurvey.find_by_postcode(params[:postcode_id => @postcode.id])
#    :site_details, :joins => :select_product, :joins => :site_survey, :joins => :sizing)
  end
  
  def new
    @postcode = Postcode.new
  end
  
  def create
    @postcode = Postcode.new(params[:postcode])
    if @postcode.save
      redirect_to new_postcode_select_product_path(@postcode)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @postcode = Postcode.find(params[:id])
  end
  
  def update
    @postcode = Postcode.find(params[:id])
    if @postcode.update_attributes(params[:postcode])
      flash[:notice] = "Successfully updated postcode."
      redirect_to @postcode
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @postcode = Postcode.find(params[:id])
    @postcode.destroy
    flash[:notice] = "Successfully destroyed postcode."
    redirect_to postcodes_url
  end
end
