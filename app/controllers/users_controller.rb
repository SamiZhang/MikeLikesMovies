class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  #this is for when mike creates a new user with just an email
  def create
    @user = User.new(user_params)
    @user.add_token
     if @user.save
       UserMailer.invite_mailer(@user).deliver_later
       redirect_to root_path
    else
      render :new
    end
  end

  def set_password
    @user.find_by(email: params[:email])
    if params[:token] == @user.token
      @user.password = params[:password]
      @user.save
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
