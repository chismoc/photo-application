class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :confirmable,
         :trackable,
         :recoverable,
         :rememberable,
         :validatable

 private
  def after_confirmation
    WelcomeMailer.send_greetings_notification(self)
                .deliver_now
  end
end
