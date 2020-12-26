class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      # @cntct = SubscriptionMailer.subscription_email(subscriber_params)
      @cntct = SubscriptionMailer.subscription_user(subscriber_params)
      if @cntct.deliver_now
        # SubscriptionMailer.subscription_user(subscriber_params).deliver_now
        flash.now[:notice] = "हमारी मेलिंग सूची में शामिल होने के लिए धन्यवाद!"
      end
    else
      flash.now[:notice] = "यह ईमेल पहले से ही हमारी मेलिंग सूची में है!"
    end

    # respond_to do |format|
    #   format.js { render flash.now[:notice] = "working" } #this will be rendered
    # end
    #render html: pagename['pagename']
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

  # def pagename
  #   params.require(:subscriber).permit(:pagename)
  # end
end
