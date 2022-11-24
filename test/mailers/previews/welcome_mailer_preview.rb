# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/send_greetings-notification
  def send_greetings-notification
    WelcomeMailer.send_greetings-notification
  end

end
