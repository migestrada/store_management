class ProductsController < ApplicationController
  before_action :set_product, only: [:update, :edit, :destroy]

  def index
    @products = Product.all.order(id: :asc)
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)

    return redirect_to products_path if @product.save

    render :new, status: 400
  end

  def edit
    render :new
  end

  def update
    redirect_to products_path if @product.update(product_params)
  end

  def destroy
    redirect_to products_path if @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :code, :price)
  end
end