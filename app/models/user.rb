class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: {
    female: 0,
    male: 1
  }

  has_one_attached :photo
  has_many :posts
  has_many :like_posts
  has_many :_like_posts, through: :like_posts, class_name: "Post", source: :post

end
