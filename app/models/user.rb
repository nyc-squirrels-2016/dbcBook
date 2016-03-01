class User < ActiveRecord::Base
  has_secure_password

  has_many :status_updates
  has_many :comments
  has_many :friends
  has_many :comment_likes
  has_many :status_update_likes

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true


end
