class User < ActiveRecord::Base
	has_secure_password

	validates :email, presence: true, uniqueness: true
	validates :password, length: { minimum: 8 }

	has_many :bookings
	has_many :services
end
