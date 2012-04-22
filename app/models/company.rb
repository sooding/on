class Company < ActiveRecord::Base
  attr_accessible :industry, :name, :password

  before_save :create_remember_token


  private 

    def create_remember_token
	    self.remember_token = SecureRandom.urlsafe_base64
    end
end
