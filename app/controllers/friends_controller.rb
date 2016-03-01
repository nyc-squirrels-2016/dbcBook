class FriendsController < ApplicationController

  def create
    @friend = Friend.new
  end

end
