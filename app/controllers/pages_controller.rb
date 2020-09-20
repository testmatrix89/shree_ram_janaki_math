class PagesController < ApplicationController
  def index
  	@products = Product.all
  	@order_item = current_order.order_items.new
  end

  def mattresses
  	@mattresses = Product.where(category: 'Mattress')
  end

  def diningtables
  	@diningtables = Product.where(category: 'Dining Table')
  end

  def sofas
  	@sofas = Product.where(category: 'Sofa')
  end

  def cots
  	@cots = Product.where(category: 'Cot')
  end

  def details
  	@products = Product.all
  	@order_item = current_order.order_items.new
  end

  def show
  	@product = Product.find(params[:id])
  end
end
