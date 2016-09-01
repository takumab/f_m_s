require 'rails_helper'

describe Service, :type => :model do
	
	describe "validations" do
		subject { FactoryGirl.build(:service, name: "Example service", description: "Clean example", image_url: "example.jpg") }
		it "does not validate service without a name" do
			subject.name = nil
			expect(subject).not_to be_valid 
		end

		it "does not validate service without a description" do
			subject.description = nil
			expect(subject).not_to be_valid 
		end

		it "does not validate service without a image" do
			subject.image_url = nil
			expect(subject).not_to be_valid 
		end
	end
end