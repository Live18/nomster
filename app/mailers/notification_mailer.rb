class NotificationMailer < ApplicationMailer
  default from: 'no-reply@nomsterapp.com'

  def comment_added
    mail(to: "billwagner101@hotmail.com")
  end
end
