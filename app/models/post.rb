# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  photo       :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ActiveRecord::Base
  validates :photo, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :post_likes, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  def liked_by_user?(user)
    post_likes.find_by(user: user)
  end

  def like_status
    result = post_likes.limit(3).collect{|pl| pl.user.username}.join(", ")
    result += " and #{post_likes.count - 3} others" if post_likes.count > 3
    result += " likes this"
    return result
  end
end
