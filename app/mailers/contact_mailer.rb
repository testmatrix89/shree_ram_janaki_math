class ContactMailer < ApplicationMailer
	default from: "infomatrix89@gmail.com"

	def contact_email(cData)
		@sender = cData
		mail(to: 'testmatrix89@gmail.com', from: 'infomatrix89@gmail.com', subject: @sender['name'], message: @sender['body'])
	end
end
