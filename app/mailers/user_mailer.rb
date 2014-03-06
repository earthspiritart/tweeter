class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Tweeter")
  end

  def newsletter(params)
    @email = params[:email]
    mail(to: @email, subject: "Newsletter")
  end


end
