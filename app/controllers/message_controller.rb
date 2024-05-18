class MessageController < ApplicationController
  include ApplicationHelper
  before_action :require_login , only: [:create]
  def create
    @message = Message.new(chatroom_params)
    @message.user_id = session[:user_id]
    if @message.save
      ActionCable.server.broadcast "chatroom_channel",
                                   mod_message: message_render(@message)
      # redirect_to root_path
    else
      flash[:danger] = "Invalid message data"
      redirect_to root_path , status: 401
    end
  end


  private
  def chatroom_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'layouts/message', locals: { data: message, show_details: true  })
  end
  def require_login
    unless is_loggedin?
      redirect_to login_path
    end
  end
end