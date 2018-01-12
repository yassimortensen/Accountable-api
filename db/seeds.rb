# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Yassi", password: "blahblah", email: "yassimortensen@gmail.com")
User.create(name: "Elisa", password: "123456", email: "elisa@gmail.com")

Goal.create(user_id: 1, name: "Meditate", description: "Meditate every morning", frequency: 5, binary: TRUE)
  Log.create(goal_id: 1, date: Date.new(2001, 2, 3), binary_input: TRUE)
  Log.create(goal_id: 1, date: Date.new(2001, 2, 4), binary_input: TRUE)
  Log.create(goal_id: 1, date: Date.new(2001, 2, 5), binary_input: FALSE)

Goal.create(user_id: 2, name: "Water Intake", description: "Drink 90oz of water daily", frequency: 7, binary: FALSE, amount: 90, unit: "oz")
  Log.create(goal_id: 2, date: Date.new(2001, 2, 3), amount_input: 90)
  Log.create(goal_id: 2, date: Date.new(2001, 2, 4), amount_input: 50)
  Log.create(goal_id: 2, date: Date.new(2001, 2, 5), amount_input: 60)
