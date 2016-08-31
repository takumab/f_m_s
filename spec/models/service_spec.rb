require 'rails_helper'

describe Service, :type => :model do
	

	
	describe "validity" do
		subject { FactoryGirl.build(:service, name: "Example service", description: "Clean example", image_url: "example.jpg") }
		it "should not validate service without a name" do
			subject.name = nil
			expect(subject).not_to be_valid 
		end

		it "should not validate service without a description" do
			subject.description = nil
			expect(subject).not_to be_valid 
		end

		it "should not validate service without a image" do
			subject.image_url = nil
			expect(subject).not_to be_valid 
		end
	end
end