class HomesController < ApplicationController
  def index
  	
  end

  def create
    @contact = params['commit']
    if @contact
      @cntct = ContactMailer.contact_email(getParams)
      #@cntct.deliver_now
      if @cntct.deliver_now
        flash[:alert] = "Message sent! We will get back to you shortly."
        redirect_to root_path + pagename['pagename'] + '/#contact'
      end
      #redirect_to action: :index
      #render html: pagename['pagename']
    end
  end

  private
  def getParams
  	params.require(:home).permit(:name, :email, :body)
  end
  def pagename
    params.require(:home).permit(:pagename)
  end
end