class UserMailer < ActionMailer::Base
  default from: "admin@quanda.com", to: "user@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    mail :to=> user.email, subject: "Signup Confirmation"
  end
end
