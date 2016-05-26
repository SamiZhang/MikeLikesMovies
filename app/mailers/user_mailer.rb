class UserMailer < ApplicationMailer
  default from: "app51303535@heroku.com"
  layout 'mailer'

  def invite_mailer(user, tempass)
    @user = user
    @tempass = tempass
    @url = "/users/#{@user.id}/edit/" + @user.token
    mail(to: @user.email, subject: 'Come watch and review movies with Mike!')
  end
end
