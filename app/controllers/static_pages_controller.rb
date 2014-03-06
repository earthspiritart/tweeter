class StaticPagesController < ApplicationController
  layout "tweeter"
  
  # def welcome
  #   UserMailer.welcome(current_user).deliver
  #   redirect_to root_path, notice: "welcome"
  # end

  def about
  end

  def newsletter_signup
    if request.post?
      UserMailer.newsletter(params).deliver
    end
  end
  
  def tos
  end
end