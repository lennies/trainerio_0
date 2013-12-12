class UserMailer < ActionMailer::Base
  default from: "info@trainerio.com"


   def welcome_email(message)
    @message = message

    mail to: "lennie@trainerio.com", subject: 'User Request'
  end

  def confirmation_email(message)
  	@message = message

  	mail to: message.email, subject: "Thanks for your Request!"
  end
end
