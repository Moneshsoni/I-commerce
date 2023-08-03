class CustomersController < ApplicationController
  before_action :authenticate_user!
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    
    binding.pry
    
    @customer = Customer.new
  end

  def create
    binding.pry
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer , notice: "Customer was successfully created."
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to @customer , notice: "Customer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy  
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name,:surname,:email)
  end
  
end
