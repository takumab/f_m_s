require 'rails_helper'

RSpec.describe User, :type => :model do 
	
	describe "validations" do
		before { @user = FactoryGirl.build(:user, email: "jsmith@example.com", password_digest: "@$&8&uio") }
		
		it "is not valid without email" do
			@user.email = nil
			expect(@user).not_to be_valid
		end

		it "is not valid without password" do
			@user.password = nil
			expect(@user).not_to be_valid
		end


	end

	
end