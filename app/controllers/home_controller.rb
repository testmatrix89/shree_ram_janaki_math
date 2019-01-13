class HomeController < ApplicationController
  def index
  	@contact = params['commit']
  	if @contact
  		@cntct = ContactMailer.contact_email(getParams)
  		@cntct.deliver_now
  		if @cntct.deliver_now
			  flash[:alert] = "Message sent! We will get back to you shortly."
			  redirect_to root_path + pagename['pagename'] + '/#contact'
  		end
  		#redirect_to action: :index
  		#render html: pagename['pagename']
  	end
  end

  def getParams
  	params.permit(:name, :email, :body)
  end
  def pagename
    params.permit(:pagename)
  end
end