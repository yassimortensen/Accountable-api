class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :goal_id
      t.date :date
      t.boolean :binary_input
      t.integer :amount_input

      t.timestamps
    end
  end
end
