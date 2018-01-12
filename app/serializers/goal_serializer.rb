class GoalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :frequency, :binary, :amount, :unit, :logs

end
