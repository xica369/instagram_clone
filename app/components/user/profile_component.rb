# frozen_string_literal: true

class User::ProfileComponent < ViewComponent::Base
  include Devise::Controllers::Helpers

  def initialize(user:)
    @user = user
  end
end
