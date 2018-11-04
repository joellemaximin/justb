class Admin::BookingsController < AdminController
	before_action :set_booking, only:[:show, :set_as_paid, :set_as_unpaid]

def index
	@bookings = Booking.order(id: :desc)
end

def set_as_paid
@booking.update!(paid: true)
flash[:notice] = "Booking set as paid."
redirect_to action: 'show'
end

def set_as_unpaid
@booking.update!(paid: false)
flash[:notice] = "Booking set as unpaid."
redirect_to action: 'show'
end



private

	def set_booking
		@booking = Booking.find(params[:id])
	end

end
