FactoryGirl.define do 
	factory :service do 
		name "Example service"
		description "Example cleaning"
		image_url "exampe.jpg"
		location_of_service "Residential/Commercial"
	end
end