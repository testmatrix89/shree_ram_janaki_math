class PagesController < ApplicationController
  # before_action :set_items
  
  def index
  	# @products = Product.all
  	# @order_item = current_order.order_items.new
    @math_programs = Program.all
    @math_sthans = math_dev_sthan #MathSthan.all
  end

  # def mattresses
  # 	@mattresses = Product.where(category: 'Mattress')
  # end

  # def diningtables
  # 	@diningtables = Product.where(category: 'Dining Table')
  # end

  # def sofas
  # 	@sofas = Product.where(category: 'Sofa')
  # end

  # def cots
  # 	@cots = Product.where(category: 'Cot')
  # end

  # def details
  #   redirect_to admin_products_path
  # 	# @products = Product.all
  # 	# @order_item = current_order.order_items.new
  # end

  # def show
  # 	@product = Product.find(params[:id])
  # end


  # def set_items
  #   @products = Product.all
  #   @order_item = current_order.order_items.new
  # end
end
