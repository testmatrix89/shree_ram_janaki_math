class SubscribersController < ApplicationController
	def create
    	@subscriber = Subscriber.new(subscriber_params)
    	
    	if @subscriber.save
			@cntct = SubscriptionMailer.subscription_email(subscriber_params)
	  		@cntct.deliver_now
	  		if @cntct.deliver_now
	  			SubscriptionMailer.subscription_user(subscriber_params).deliver_now
				redirect_to root_path
	    		flash[:notice] = "Thanks for joining our mailing list!"
	  		end
	  	else
	  		redirect_to root_path
	    	flash[:notice] = "This email is already in our mailing list!"
		end
    	#render html: subscriber_params
  	end

	private
  	def subscriber_params
  		params.require(:subscriber).permit(:email)
  	end
end
