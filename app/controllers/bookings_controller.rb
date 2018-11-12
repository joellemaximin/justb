class BookingsController < ApplicationController

  def index
  	redirect_to action: 'new'
  end

  def new
  	@booking = Booking.new
    @booking.product_id = params[:product_id] 	
  end

  def create
    @booking = Booking.new(booking_params)
      if @booking.save
        BookingsMailer.with(booking: @booking).confirmation_notification.deliver_now
        BookingsMailer.with(booking: @booking).notification_to_admin.deliver_now
        redirect_to new_booking_path
        flash[:success] = "Votre réservation a bien été envoyée!"

      else
        render 'new'
      end
  end



 ##def redirect_to_paypal
 ##    @booking = Booking.find(params[:id])
 ## end

  private

  def booking_params
    params.require(:booking).permit(:first_name, :last_name,
      :email, :phone, :notes)
  end

end

