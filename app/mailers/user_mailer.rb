class UserMailer < ApplicationMailer
  def invite_mailer(user)
    @user = user
    @url = "/users/#{@user.id}/edit/" + @user.token
    mail(to: @user.email, subject: 'Come watch and review movies with Mike!')
  end
end
