class HomeController < ApplicationController
  def index
  	@contact = params['commit']
  	if @contact
  		@cntct = ContactMailer.contact_email(getParams)
  		@cntct.deliver_now
  		if @cntct.deliver_now
			flash[:notice] = "Message sent! We will get back to you shortly."
			redirect_to action: :index
  		end
  		#redirect_to action: :index
  		#render html: @cntct
  	end
  end

  def getParams
  	params.permit(:name, :email, :body)
  end
end