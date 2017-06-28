class MessagesController < ApplicationController

  def index
    redirect_to "/messages/show"
  end

  def new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to "/messages/show"
  end

  def show
    @messages = Message.all
  end

  private

  def message_params
    params.require(:message).permit(:message_text)
  end

end
