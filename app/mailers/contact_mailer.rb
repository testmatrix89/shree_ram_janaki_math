class ContactMailer < ApplicationMailer
	default from: "infomatrix89@gmail.com"

	def contact_email(contact_params)
		@sender = contact_params
		mail(to: @sender['email'], subject: @sender['name'])
	end

  def contact_self(contact_params)
    @sender_self = contact_params
    mail(to: 'testmatrix89@gmail.com', subject: @sender_self['name'])
  end
end
