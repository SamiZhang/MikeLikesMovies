class UserMailer < ApplicationMailer
  # default from: "app51303535@heroku.com"
  # layout 'mailer'

  def invite_mailer(user, tempass)
    @user = user
    @tempass = tempass
    @url = "mikelikesmovies.herokuapp.com/login"
    mail(to: @user.email, subject: 'Come watch and review movies with Mike!')
  end
end
