class UsersController < ApplicationController
    before_filter :authenticate_user!

  def show
    @user = current_user
    @tweet = @user.tweets.build
    @tweets = @user.tweets
  end

  def newsletter
    if request.post? do
      UserMailer.newsletter(params).deliver
    end
  end
end