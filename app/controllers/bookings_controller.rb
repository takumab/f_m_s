class BookingsController < ApplicationController
	
	def index
		@bookings = Booking.all
		@bookings_by_date = @bookings.group_by(&:date) 
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end

	def show
		@booking = Booking.find(params[:id])
	end

	def new
		@booking = Booking.new(date: Date.today )
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save 
			redirect_to bookings_path, :notice => "Thank You. Your appointment for #{@booking.date} has been made."
		else
			render 'new'
		end
		
	end

	def destroy
	end


	private

	def booking_params
		params.require(:booking).permit(:date, :description)
	end

	
end