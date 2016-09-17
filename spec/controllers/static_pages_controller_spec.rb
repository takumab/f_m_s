require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do 
	describe '#POST' do
		it "routes to /static_pages/thank_you" do 
			expect(:post => '/static_pages/thank_you').to be_routable
		end
	end

end