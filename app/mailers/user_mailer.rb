class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Tweeter")
  end

  def newsletter(user)
    @user = user
    mail(to: @user.email, subject: "Newsletter")
  end


end
