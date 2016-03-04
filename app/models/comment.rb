class Comment < ActiveRecord::Base

  belongs_to :status_update
  belongs_to :user
  has_many :comment_likes

  validates :status_update_id, :user_id, presence: true


end
