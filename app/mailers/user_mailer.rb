class UserMailer < ApplicationMailer

  default from: 'keyurpatoliya13@yahoo.in'

  def payment_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
