class LogSerializer < ActiveModel::Serializer
  attributes :id, :goal_id, :date, :binary_input, :amount_input
end
