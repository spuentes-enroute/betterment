class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: 'saul.puentess@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
