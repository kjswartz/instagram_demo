# == Schema Information
#
# Table name: post_comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  post_id    :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
end
