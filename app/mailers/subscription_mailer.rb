class SubscriptionMailer < ApplicationMailer
	default from: "infomatrix89@gmail.com"

	# def subscription_email(cEmail)
	# 	@subscriptionEmail = cEmail
	# 	mail(to: @subscriptionEmail['email'], subject: 'New email Subscribed!')
	# end

	def subscription_user(cUser)
		@sbscriberUser = cUser
		mail(to: @sbscriberUser['email'], subject: 'Email subscribed message!')
	end
end
