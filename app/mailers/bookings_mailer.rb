class BookingsMailer < ApplicationMailer

  def confirmation_notification
    mail(to: params[:booking].email, subject: "Prise de rendez-vous enregistrée")
  end

  def notification_to_admin
    mail to: "justbeauty97111@gmail.com"   
  end
end
