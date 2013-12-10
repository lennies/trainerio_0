class UserMailer < ActionMailer::Base
  default from: "info@trainerio.com"


   def welcome_email(message)
    @message = message

    mail to: "lennie@trainerio.com", subject: 'User Request'
  end
end
