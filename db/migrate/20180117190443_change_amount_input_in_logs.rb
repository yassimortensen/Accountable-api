class ChangeAmountInputInLogs < ActiveRecord::Migration[5.1]
  def change
    change_column :logs, :amount_input, :float
  end
end
