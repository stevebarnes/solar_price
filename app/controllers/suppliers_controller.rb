class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
  
  def show
    @supplier = Supplier.find(params[:id])
  end
  
  def new
    @supplier = Supplier.new
  end
  
  def create
    @supplier = Supplier.new(params[:supplier])
    @supplier.active = false
    if @supplier.save
      flash[:notice] = "Successfully created supplier."
      redirect_to @supplier
    else
      render :action => 'new'
    end
  end
  
  def edit
    @supplier = Supplier.find(params[:id])
  end
  
  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(params[:supplier])
      flash[:notice] = "Successfully updated supplier."
      redirect_to @supplier
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    flash[:notice] = "Successfully destroyed supplier."
    redirect_to suppliers_url
  end
end
