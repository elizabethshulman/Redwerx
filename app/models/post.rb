class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :subforum
  has_many :comments
end
