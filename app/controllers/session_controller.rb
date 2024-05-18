class SessionController < ApplicationController

  before_action :log_in_redirect, only: [:create, :new, ]
  def create
    username = params[:session][:username]
    password = params[:session][:password]
    user = User.find_by(username: username)
    if user && user.authenticate(password)
       session[:user_id] = user.id
       flash[:success] = "Welcome back, #{user.username}!"
       redirect_to root_path
    else
      flash[:danger] = 'Invalid username or password'
      render 'new', status: 401
    end
  end

  def new

  end

  def destroy
    session[:user_id] = nil
    flash.now[:notice] = "User logout"
    redirect_to login_path
  end
  
  private
  def log_in_redirect
    if session[:user_id]
    flash[:notice] = "You are already logged in!"
    redirect_to root_path
    end
  end


end