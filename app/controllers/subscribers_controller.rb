class SubscribersController < ApplicationController
	def create
    	@subscriber = Subscriber.new(subsParams)
    	@subscriber.save

		@cntct = SubscriptionMailer.subscription_email(subsParams)
  		@cntct.deliver_now
  		if @cntct.deliver_now
  			SubscriptionMailer.subscription_user(subsParams).deliver_now
			redirect_to root_path
    		flash[:notice] = "Thanks for joining our mailing list!"
  		end
  		
    	#render html: subsParams
  	end

  	def subsParams
  		params.require(:subscriber).permit(:email)
  	end
end
