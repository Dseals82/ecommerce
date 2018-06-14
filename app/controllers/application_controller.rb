class ApplicationController < ActionController::Base
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new(subtotal: 0)
    end
  end
end
