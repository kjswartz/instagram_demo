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
  belongs_to :user
end
