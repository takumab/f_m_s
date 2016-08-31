class Service < ActiveRecord::Base
	has_many :bookings

	validates :name, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	
end
