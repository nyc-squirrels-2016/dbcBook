class StatusUpdateLike < ActiveRecord::Base

  belongs_to :user
  belongs_to :status_update
  validates :user_id, :status_update_id, presence: true

end
