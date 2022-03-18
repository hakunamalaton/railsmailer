class UserMailer < ApplicationMailer
  default from: 'lamtoan557@gmail.com'
  

  # ActionMailer::MessageDelivery object which can then be told to 
  # deliver_now or deliver_later to send itself out.
  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Bach Khoa Site')
  end
end
  