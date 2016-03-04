class FriendsController < ApplicationController

  def create
    @friend = Friend.create(user_id: current_user.id, friend_id: params[:friend][:friend_id])
    redirect_to users_path
  end

end
