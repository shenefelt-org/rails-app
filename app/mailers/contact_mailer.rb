class ContactMailer < ApplicationMailer
  def submission_email(contact)
    @contact = contact
    mail(
      to: "hello@shenefelt.org",
      subject: "New Message from #{@contact.name}",
      reply_to: @contact.email # This makes the "Reply" button work
    )
  end
end
