class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :files
  has_many :like_posts
  has_many :user_likes, through: :like_posts, class_name: "User", source: :user
  has_many :comments
end
