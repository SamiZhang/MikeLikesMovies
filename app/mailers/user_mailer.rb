class UserMailer < ApplicationMailer
  def invite_mailer(user)
    @user = user
    @url = "!!!!not a real thing yet"
    mail(to: @user.email, subject: 'Come watch and review movies with Mike!')
  end
end
