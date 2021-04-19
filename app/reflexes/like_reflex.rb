# frozen_string_literal: true

class LikeReflex < ApplicationReflex
  def change_likes
    user = User.find(element.dataset[:user])
    post = Post.find(element.dataset[:post])
    user_like = post.like_posts.find_by(user:user)
    @icon = false

    if user_like.nil?
      post.like_posts.create(user:user)
      @icon = true
    else
      LikePost.delete(user_like)
    end

  end

end
