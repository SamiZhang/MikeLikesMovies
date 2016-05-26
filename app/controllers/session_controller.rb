class SessionController < ApplicationController

  def new
  end

  def create
    @user= User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:danger]= ':invalid username or password.'
      render 'new'
    end
  end

  def destroy
    session.clear
    @current_user = nil
    flash[:success] = 'You are logged out.'
    redirect_to login_path
  end
end
