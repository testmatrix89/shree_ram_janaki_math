class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      @user_contact = ContactMailer.contact_email(contact_params)
      if @user_contact.deliver_now
        ContactMailer.contact_self(contact_params).deliver_now
        flash[:alert] = "आपका संपर्क संदेश सफलतापूर्वक सबमिट कर दिया गया है, हम किसी भी कार्यक्रम से संबंधित शीघ्र ही आपसे संपर्क करेंगे।"
      end
    else
      flash[:alert] = "आपने पहले ही अपने संपर्क विवरण प्रस्तुत कर दिए हैं, हम आपसे किसी भी कार्यक्रम से संबंधित संपर्क करेंगे।"
    end
  end

  private
  def contact_params
  	params.require(:contact).permit(:name, :email, :body)
  end
  # def pagename
  #   params.require(:home).permit(:pagename)
  # end
end