class SizingsController < ApplicationController
    before_filter :get_postcode
  def index
    @sizings = Sizing.all
  end
  
  def show
    @sizing = Sizing.find(params[:id])
  end
  
  def new
    @sizing = @postcode.build_sizing
  end
  
  def create
    @sizing = @postcode.build_sizing(params[:sizing])
    if @sizing.save
      #
      # 1. email matched suppiers
      #
      #
      # 2. email enquirer
      redirect_to new_postcode_free_report_path(@postcode)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @sizing = Sizing.find(params[:id])
  end
  
  def update
    @sizing = Sizing.find(params[:id])
    if @sizing.update_attributes(params[:sizing])
      flash[:notice] = "Successfully updated sizing."
      redirect_to @sizing
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @sizing = Sizing.find(params[:id])
    @sizing.destroy
    flash[:notice] = "Successfully destroyed sizing."
    redirect_to sizings_url
  end
end
