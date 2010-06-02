class PostcodesController < ApplicationController
  def index
    @postcodes = Postcode.all
  end
  
  def show
    @postcode = Postcode.find(params[:id])
  end
  
  def new
    @postcode = Postcode.new
  end
  
  def create
    @postcode = Postcode.new(params[:postcode])
    if @postcode.save
      redirect_to :controller => "select_products", :action => "new"
#      flash[:notice] = "Successfully created postcode."
#      redirect_to @postcode
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
