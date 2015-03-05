# == Schema Information
#
# Table name: post_likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostLike < ActiveRecord::Base
  validates :user_id, presence: true
  validates :post_id, presence: true
  
  belongs_to :user
  belongs_to :post
end
