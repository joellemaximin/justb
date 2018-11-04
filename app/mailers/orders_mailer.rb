class OrdersMailer < ApplicationMailer

  def checkout_notification
    mail(to: params[:order].email, subject: "Votre commande a bien été prise en compte")
  end

  def notification_to_admin
    mail(to: "justbeauty97111@gmail.com", subject: "Vous avez un nouvelle commande")    
  end
end
