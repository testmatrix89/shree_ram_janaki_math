class HomeController < ApplicationController
  def index
  	@contact = params['commit']
  	if @contact
  		ContactMailer.contact_email().deliver_now
  		#redirect_to action: :index
  	end
  end
end