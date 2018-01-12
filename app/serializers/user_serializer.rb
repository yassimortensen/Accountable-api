class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :logs
  has_many :goals

end
