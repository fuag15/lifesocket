class ContactMailer < ActionMailer::Base
  default from: "contact@steelpigeondesign.com"

  def contact_email from, text
    @text = text
    mail to: 'mike@steelpigeondesign.com', subject: "New Contact: #{from}", reply_to: from
end
