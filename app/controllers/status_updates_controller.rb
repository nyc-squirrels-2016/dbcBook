class StatusUpdatesController < ApplicationController

  def index
    @status_updates = StatusUpdate.order(:created_at).reverse
  end

  def create
    status_update = StatusUpdate.create(user_id: current_user.id, body: params[:status_update][:body])
    redirect_to "/users/#{current_user.id}"
  end

end
