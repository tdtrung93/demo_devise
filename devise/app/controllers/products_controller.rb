class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    set_product
  end

  def new
    @product = Product.new
  end

  def edit
    set_product
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: 'Them moi thanh cong.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice: 'San pham da duoc cap nhat.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    set_product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'San pham da duoc xoa bo.' }
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :brand, :price, :description, :Quantity)
    end
end
