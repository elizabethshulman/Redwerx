class User < ActiveRecord::Base
  validates :email, presence: true
  validates :password, presence:true
  validates_confirmation_of :password
end
