class ContactMailer < ApplicationMailer
	default from: "princepyare@gmail.com"

	def contact_email()
		#@sender = sender
		#mail(to: @sender.email, subject: 'Test email from rails')
		mail(to: 'testmatrix89@gmail.com', subject: 'Test email from rails')
	end
end
