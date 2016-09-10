class BookingsController < ApplicationController
	
	def index
		@bookings = Booking.all
		@bookings_by_date = @bookings.group_by(&:date) 
		@date = params[:date] ? Date.parse(parse[:date]) : Date.today
	end

	def show
		@booking = Booking.find(params[:id])
	end

	def new
	end

	def create
	end

	def destroy
	end

	
end