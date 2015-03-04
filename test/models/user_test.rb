# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  avatar     :string
#  username   :string
#  name       :string
#  website    :string
#  bio        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default("false")
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
