class UserMailer < ActionMailer::Base
  default from: "Shane@GoSongBird.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://gosongbird.com'
  	mail(to:@user.email, subject 'Welcome to SongBird!')
	end

end