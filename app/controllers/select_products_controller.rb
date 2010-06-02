class SelectProductsController < ApplicationController

  before_filter :get_postcode
#  def index
#    @select_products = SelectProduct.all
#  end
#
#  def show
#    @select_product = SelectProduct.find(params[:id])
#  end
#
  def new
    @select_product = @postcode.build_select_product
  end
  
  def create
    @select_product = @postcode.build_select_product(params[:select_product])
    if @select_product.save
      redirect_to new_postcode_site_detail_path(@postcode)
#      redirect_to :controller => "site_details", :action => "new"
#      flash[:notice] = "Successfully created select product."
#      redirect_to @select_product
    else
      render :action => 'new'
    end
  end

  private


#  def edit
#    @select_product = SelectProduct.find(params[:id])
#  end
#
#  def update
#    @select_product = SelectProduct.find(params[:id])
#    if @select_product.update_attributes(params[:select_product])
#      flash[:notice] = "Successfully updated select product."
#      redirect_to @select_product
#    else
#      render :action => 'edit'
#    end
#  end
#
#  def destroy
#    @select_product = SelectProduct.find(params[:id])
#    @select_product.destroy
#    flash[:notice] = "Successfully destroyed select product."
#    redirect_to select_products_url
#  end
end
