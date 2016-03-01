class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    @status_updates = @user.status_updates
    @status_update = StatusUpdate.new
  end



  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
