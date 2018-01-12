class User < ApplicationRecord
  has_many :goals
  has_many :logs, through: :goals

  has_secure_password
end
