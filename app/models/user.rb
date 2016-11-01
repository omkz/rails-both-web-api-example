class User < ApplicationRecord
  before_create -> { self.auth_token = SecureRandom.hex }
  has_many :posts
  has_many :comments
end
