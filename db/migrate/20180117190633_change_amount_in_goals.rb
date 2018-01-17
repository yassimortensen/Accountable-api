class ChangeAmountInGoals < ActiveRecord::Migration[5.1]
  def change
    change_column :goals, :amount, :float
  end
end
