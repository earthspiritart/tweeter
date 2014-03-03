class TweetsController < ApplicationController
  

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to user_path(current_user), notice: "yay"
    else
      redirect_to user_path(current_user), alert: "boo"
      
     end


  end


  

  # def destroy

  #     redirect_to user_path(current_path)
  

  # end

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)


  end
end