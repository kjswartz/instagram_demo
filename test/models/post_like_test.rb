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

require 'test_helper'

class PostLikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
