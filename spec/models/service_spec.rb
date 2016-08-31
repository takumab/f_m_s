require 'rails_helper'

describe Service, :type => :model do
	

	
	describe "validity" do
		it "should not validate service without a name" do
			@service = FactoryGirl.build(:service, name: " ")
			expect(@service).not_to be_valid 
		end

		it "should not validate service without a description" do
			@service = FactoryGirl.build(:service, description: " ")
			expect(@service).not_to be_valid 
		end

		it "should not validate service without a image" do
			@service = FactoryGirl.build(:service, image_url: " ")
			expect(@service).not_to be_valid 
		end
	end
end