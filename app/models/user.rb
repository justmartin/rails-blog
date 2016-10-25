class User < ApplicationRecord
  has_many :posts
  has_many :comments

  has_many :followers,  class_name: "Relationship", foreign_key: "followee_id"
  has_many :followings, class_name: "Relationship", foreign_key: "follower_id"
end
