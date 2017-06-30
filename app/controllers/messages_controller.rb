class MessagesController < ApplicationController
  before_action :require_login
  
  def index
    @messages = Message.order(created_at: :desc)
  end

  def new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to messages_url
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:message_text)
  end

end
