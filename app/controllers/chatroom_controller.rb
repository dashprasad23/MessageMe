class ChatroomController < ApplicationController
  include ApplicationHelper
  before_action :require_login , only: [:index]
  def index
    @messages = Message.all
    @users = User.all
    @message = Message.new
  end

  private
   def require_login
      unless is_loggedin?
        redirect_to login_path
      end
    end


end