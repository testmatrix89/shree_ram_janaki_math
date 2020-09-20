class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = product_id
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params_permit)
    if @product
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.full_message
      redirect_to new_product_path
    end
  end

  def update
    @product = Product.update(params_permit)
    byebug
    if @product
      redirect_to products_path
    else
      flash[:error] = @product.errors.full_message
      redirect_to edit_product_path
    end
  end

  def edit
    @product = product_id
  end

  def destroy
    @product = product_id
    @product.destroy()
    redirect_to products_path
  end


  def product_id
    Product.find(params[:id])
  end

  def params_permit
    params.require(:product).permit(:title, :description, :colour_options, :discount, :price, :category, {avatars: []})
  end
end
