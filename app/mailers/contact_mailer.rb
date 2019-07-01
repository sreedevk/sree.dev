class ContactMailer < ApplicationMailer
  def receive_message(message)
    @message = message
    mail(to: Config.profile[:email], subject: "New Message From: #{message.full_name}")
  end
end
