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
    @users = User.all
    @friend = Friend.new
  end

  def show
    @user = User.find(params[:id])
    @status_updates = @user.status_updates.order(:created_at).reverse
    @status_update = StatusUpdate.new
  end

  def image_update
    current_user.update(img_url: params[:img_url])
    redirect_to '/'
  end


  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
