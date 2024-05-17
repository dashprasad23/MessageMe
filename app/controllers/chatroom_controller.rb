class ChatroomController < ApplicationController
  def index
    @messages = Message.all
    @users = User.all
    @message = Message.new
  end


end