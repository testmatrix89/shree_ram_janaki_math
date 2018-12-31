class HomeController < ApplicationController
  def index
  	@contact = params['commit']
  	if @contact
  		@cntct = ContactMailer.contact_email(getParams)
  		@cntct.deliver_now
  		#redirect_to action: :index
  		#render html: @cntct
  	end
  end

  def getParams
  	params.permit(:name, :email, :body)
  end
end