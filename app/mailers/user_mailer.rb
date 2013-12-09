class UserMailer < ActionMailer::Base
  default from: "info@trainerio.com"


   def welcome_email(message)
    @message = message

    mail to: message.email, subject: 'Welcome to My Awesome Site'
  end
end
