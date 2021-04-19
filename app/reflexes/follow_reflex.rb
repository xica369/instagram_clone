# frozen_string_literal: true

class FollowReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def change_follow
    user = User.find(element.dataset[:user_id])

    if current_user.followings.exists?(user.id)
      current_user.followings.delete(user.id)
    else
      current_user.followings << user
    end

  end

end
