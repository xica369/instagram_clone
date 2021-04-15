# frozen_string_literal: true

class CommentReflex < ApplicationReflex
  def create(user_id="", post_id="", comment="")
    user = User.find(user_id)
    post = Post.find(post_id)
    comment = Comment.create!(user:user, post:post, text:comment)
  end

end
