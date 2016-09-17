class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	#retrieves first service in Services table and sets it to "@featured_service" variable.
  	@featured_service = Service.first
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email,
  				:to => 'takumab@gmail.com',
  				:subject => "A new contact form message from #{@name}.",
  				:body => @message).deliver_now

  end


  
end
