class SubscriptionMailer < ApplicationMailer
	default from: "infomatrix89@gmail.com"

	def subscription_email(cEmail)
		@subscriptionEmail = cEmail
		mail(to: 'testmatrix89@gmail.com', from: 'infomatrix89@gmail.com', subject: 'New email Subscribed!', message: @subscriptionEmail['email'])
	end

	def subscription_user(cUser)
		@sbscriberUser = cUser
		mail(to: @sbscriberUser['email'], from: 'infomatrix89@gmail.com', subject: 'Email subscribed message!')
	end
end
