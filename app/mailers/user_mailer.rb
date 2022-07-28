class UserMailer < ApplicationMailer

  default from: 'keyurpatoliya13@yahoo.in'

  def payment_email(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: 'Your Payment Confirmation!!!')
  end
end
