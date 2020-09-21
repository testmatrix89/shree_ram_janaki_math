module ApplicationHelper
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def price_discount(price, discount)
    price-((price*discount)/100)
  end
end
