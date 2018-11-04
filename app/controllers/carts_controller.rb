class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def checkout
    OrdersMailer.with(order: current_order).checkout_notification.deliver_now
    OrdersMailer.with(order: current_order).notification_to_admin.deliver_now
    flash[:notice] = "Merci pour votre commande, une réponse sera envoyé dans les prochaines 24heures."
    redirect_to "/carts"
  end

end
