class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def checkout
    current_order.update!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
    )

    OrdersMailer.with(order: current_order).checkout_notification.deliver_now
    OrdersMailer.with(order: current_order).notification_to_admin.deliver_now
    flash[:success] = "Merci pour votre commande, une réponse sera envoyé dans les prochaines 24heures."
    
    session[:order_id] = nil
    
    redirect_to "/carts"
  end

end
