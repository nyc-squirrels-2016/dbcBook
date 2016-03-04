class User < ActiveRecord::Base
  has_secure_password

  has_many :status_updates
  has_many :comments
  has_many :friends
  #has_many :friended_users, through: :friends
  has_many :comment_likes
  has_many :status_update_likes

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def get_non_friends

    User.all.each_with_object([]){|user, accum| accum.push(user) unless self.friends.include?(user) }

  end

  # def get_non_friends

  # end

end



#Try to integrate this stuff at some point: https://www.railstutorial.org/book/following_users
