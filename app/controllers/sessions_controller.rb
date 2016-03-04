class SessionsController < ApplicationController

  def new
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render :new
    end
  end

end
