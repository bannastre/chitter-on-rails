class MessagesController < ApplicationController

  def new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to @message
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:message_text)
  end

end
