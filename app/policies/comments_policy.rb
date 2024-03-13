class CommentsPolicy < ApplicationPolicy
  attr_reader :user, :comments

  def initialize(user, comments)
    @user = user
    @comments = comments
  end

  def edit?
    user == comments.author
  end
end
