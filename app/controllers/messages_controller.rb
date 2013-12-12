class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      UserMailer.welcome_email(@message).deliver
      UserMailer.confirmation_email(@message).deliver
      redirect_to root_url, notice: "Thanks for your request! We'll reach out to you shortly!"
    else
      render "new"
    end
  end
end