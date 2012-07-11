class TenanciesController < ApplicationController

  def create
      @customer = Customer.find(params[:customer_id])
      @tenancy = @customer.tenancies.create(params[:comment])
      redirect_to post_path(@customer)
    end
    
  def destroy
      @customer = Customer.find(params[:customer_id])
      @tenancy = @customer.tenancies.find(params[:id])
      @tenancy.destroy
      redirect_to post_path(@customer)
    end

end
