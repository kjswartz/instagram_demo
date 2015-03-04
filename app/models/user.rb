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

require 'uri'

class User < ActiveRecord::Base

  # Validations
  validates :username, presence: true
  validates :name, presence: true
  validates :avatar, presence: true
  validates :bio, length: { maximum: 500 }
  validates_format_of :website, :with => URI.regexp, :allow_blank => true

  # Relationships
  has_many :posts, dependent: :destroy

  # Carrierwave
  mount_uploader :avatar, AvatarUploader
end
