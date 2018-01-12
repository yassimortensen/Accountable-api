class Log < ApplicationRecord
  belongs_to :goal
  has_one :user, through: :goal
end
