
User.create(name: "Yassi", password: "blahblah", email: "yassimortensen@gmail.com")

Goal.create(user_id: 1, name: "Meditate", description: "Meditate every morning", frequency: 5, binary: TRUE)
  365.times do |count|
      Log.create(goal_id: 1, date: Date.today-365+count, binary_input: [TRUE, FALSE].shuffle[0])
  end

Goal.create(user_id: 1, name: "Water Intake", description: "Drink 90oz of water daily", frequency: 7, binary: FALSE, amount: 90, unit: "oz")
  Log.create(goal_id: 2, date: Date.today-365, amount_input: [50, 60, 70].shuffle[0])
  182.times do |count|
      Log.create(goal_id: 2, date: Date.today-364+count, amount_input: [40, 50, 60, 70].shuffle[0])
  end
  122.times do |count|
      Log.create(goal_id: 2, date: Date.today-182+count, amount_input: [60, 70, 80, 90, 100].shuffle[0])
  end
  20.times do |count|
      Log.create(goal_id: 2, date: Date.today-60+count, amount_input: (65..75).to_a.shuffle[0])
  end
  20.times do |count|
      Log.create(goal_id: 2, date: Date.today-40+count, amount_input: (75..85).to_a.shuffle[0])
  end
  20.times do |count|
      Log.create(goal_id: 2, date: Date.today-20+count, amount_input: (85..95).to_a.shuffle[0])
  end


Goal.create(user_id: 1, name: "Sleep", description: "Sleep at least 8 hours daily", frequency: 7, binary: FALSE, amount: 8, unit: "hours")
  365.times do |count|
      Log.create(goal_id: 3, date: Date.today-365+count, amount_input: (5..10).to_a.shuffle[0])
  end

# Goal.create(user_id: 1, name: "Call Mom", description: "Call mom once a week", frequency: 1, binary: TRUE)
#   365.times do |count|
#       Log.create(goal_id: 4, date: Date.today-365+count, amount_input: (5..10).to_a.shuffle[0])
#   end
