class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at

  has_many :posts
  has_many :comments
end
