class SupplierAreasController < ApplicationController
  def index
    @supplier_areas = SupplierArea.all
  end
  
  def show
    @supplier_area = SupplierArea.find(params[:id])
  end
  
  def new
    @supplier_area = SupplierArea.new
  end
  
  def create
    @supplier_area = SupplierArea.new(params[:supplier_area])
    if @supplier_area.save
      flash[:notice] = "Successfully created supplier area."
      redirect_to @supplier_area
    else
      render :action => 'new'
    end
  end
  
  def edit
    @supplier_area = SupplierArea.find(params[:id])
  end
  
  def update
    @supplier_area = SupplierArea.find(params[:id])
    if @supplier_area.update_attributes(params[:supplier_area])
      flash[:notice] = "Successfully updated supplier area."
      redirect_to @supplier_area
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @supplier_area = SupplierArea.find(params[:id])
    @supplier_area.destroy
    flash[:notice] = "Successfully destroyed supplier area."
    redirect_to supplier_areas_url
  end
end
