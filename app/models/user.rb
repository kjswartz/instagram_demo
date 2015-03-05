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
  has_many :post_likes, dependent: :destroy

  # Carrierwave
  mount_uploader :avatar, AvatarUploader

  # Scopes
  scope :admin, -> {where(admin: true)}
  scope :non_admin, -> {where(admin: false)}
  scope :has_website, -> {where("website is not NULL")}
  scope :has_bio, -> {where("bio is not NULL")}


end
