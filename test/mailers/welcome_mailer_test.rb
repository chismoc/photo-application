require "test_helper"

class WelcomeMailerTest < ActionMailer::TestCase
  test "send_greetings-notification" do
    mail = WelcomeMailer.send_greetings-notification
    assert_equal "Send greetings-notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
