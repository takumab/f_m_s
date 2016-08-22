class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	#retrieves first service in Services table and sets it to "@featured_service" variable.
  	@featured_service = Service.first
  end
end
