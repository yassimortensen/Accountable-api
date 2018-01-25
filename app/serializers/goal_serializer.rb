class GoalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :frequency, :binary, :amount, :unit, :logs

  # def logs
  #   {
  #     logs: object.logs.sort_by {|log| log.date}
  #   }
  # end

end
