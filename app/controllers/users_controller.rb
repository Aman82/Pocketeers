class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(params.require(:user).permit(:username, :first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation, :avatar))
  if @user.save
    flash[:notice] = "New User Created! Please Sign In."
    # log the user in
    redirect_to root_path
  else
    render 'new'
  end
  end

end

