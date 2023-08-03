class SellersController < ApplicationController
  before_action :authenticate_rseller!
  def index
    # @sellers = current_sellers
    @sellers = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.new(seller_params)
    if @seller.save
      redirect_to @seller, notice: 'Seller was successfully created'
    else
      render :new
    end
  end


  def edit
    @seller = Seller.find(params[:id])
  end

  def update
    @seller = Seller.find(params[:id])

    if @seller.update(seller_params)
      redirect_to @seller, notice: 'Seller was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @seller = Seller.find(params[:id])
    @seller.destroy
    redirect_to sellers_path
  end

  def home
    @products = Product.all
  end
  
  private

  def seller_params
    params.require(:seller).permit(:name,:surname,:email)
  end


end
