class Signup < ActiveRecord::Base
validates :firstName, :lastName, :email, :presence => true, :uniqueness => true, :email => true
end