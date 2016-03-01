class StatusUpdate < ActiveRecord::Base

  belongs_to :user
  has_many :status_update_likes
  has_many :comments
  validates :user_id, presence: true


end
