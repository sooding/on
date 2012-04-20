class Contractor < ActiveRecord::Base
  attr_accessible :email, :firstName, :lastName, :password

  validates :firstName, presence: true, length: { maximum:50 }
  validates :lastName, presence: true, length: { maximum:50 }
  validates :email, presence: true
  validates :password, length: { minimum: 6 }

  before_save :create_remember_token

  private
  def create_remember_token
  self.remember_token = SecureRandom.urlsafe_base64
end

end
