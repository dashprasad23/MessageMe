class MessageController < ApplicationController

  def create
    @message = Message.new(chatroom_params)
    @message.user_id = session[:user_id]
    if @message.save
      redirect_to root_path
    else
      flash[:danger] = "Invalid message data"
      redirect_to root_path , status: 401
    end
  end


  private
  def chatroom_params
    params.require(:message).permit(:body)
  end
end