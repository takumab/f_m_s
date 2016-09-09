class BookingsController < ApplicationController
	
	def index
		@bookings = Booking.all
		@bookings_by_date = @bookings.group_by(&:published_on) 
	end

	def show
	end

	def new
	end

	def create
	end

	def destroy
	end

	
end