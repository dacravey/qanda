class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email
  has_many :questions
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  validates_presence_of :username
  private

  def send_welcome_email
    UserMailer.signup_confirmation(self).deliver_now
  end
end
