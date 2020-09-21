module ProductHelper
  def check_add_to_cart?(pid)
    current_order.order_items.any? {|h| h[:product_id] == pid}
  end
end
