class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @seller = Seller.find(params[:seller_id])
        @product = @seller.products.create(product_params)
        redirect_to seller_path(@seller)
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to @product, notice: "Product is succefully updated"
        else
            render :edit
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path, notice: "Product is successfully Deleted"
    end

    private
    def product_params
        params.require(:product).permit(:name,:category,:price,:available)
    end
end
