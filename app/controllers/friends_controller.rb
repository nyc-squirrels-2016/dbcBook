class FriendsController < ApplicationController

  def create
    @friend = Friend.create(user_id: current_user.id, friend_id: )
  end

end
