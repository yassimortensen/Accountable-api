class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :frequency
      t.boolean :binary
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
