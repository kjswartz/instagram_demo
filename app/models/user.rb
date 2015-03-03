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
#

class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
end
